import 'package:account_settings/infrastructure/dtos/user/user_account_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_entity.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_facade.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_failure.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_entity.dart';
import 'package:tonight/infrastructure/tonight_vouchers/dtos/tonight_voucher_dto.dart';
import 'package:tonight/infrastructure/user_tonight_vouchers/dtos/user_tonight_voucher_dto.dart';

class FirebaseTonightVoucherFacade implements TonightVoucherFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseTonightVoucherFacade(
    this._firestore,
    this._auth,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<TonightVoucherFailure, Option<TonightVoucher>>> getVoucher(
    String eventId,
  ) async {
    try {
      final voucherDoc = await _firestore.tonightVouchers.doc(eventId).get();
      if (!voucherDoc.exists) return right(none());
      final voucher = TonightVoucherDto.fromFirebase(voucherDoc).toDomain();
      return right(some(voucher));
    } catch (e) {
      _logger.e(e);
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TonightVoucherFailure.unexpected());
    }
  }

  @override
  Future<Either<TonightVoucherFailure, Unit>> useVoucher(
    String eventId,
  ) async {
    try {
      return await _firestore.runTransaction((tx) async {
        final currentUserRef = _firestore.getCurrentUserDocRef(_auth);
        final currentUserDoc = await tx.get(currentUserRef);
        final currentUser = UserAccountDto.fromFirebase(currentUserDoc);
        if (_checkIfHasUsedVoucherInLast12Hours(
            currentUser.lastTonightVoucherUseAt)) {
          return left(const TonightVoucherFailure.voucherAlreadyUsedTonight());
        }

        final voucherRef = _firestore.tonightVouchers.doc(eventId);
        final voucherDoc = await tx.get(voucherRef);
        final tonightVoucherDto = TonightVoucherDto.fromFirebase(voucherDoc);
        final tonightVoucher = tonightVoucherDto.toDomain();

        if (tonightVoucher.usedBy.contains(currentUser.id)) {
          return left(const TonightVoucherFailure.voucherAlreadyUsedOnEvent());
        }

        if (tonightVoucher.validUntil.isBefore(DateTime.now())) {
          return left(const TonightVoucherFailure.voucherExpired());
        }

        if (tonightVoucher.usedBy.length >= tonightVoucher.poolLimit) {
          return left(const TonightVoucherFailure.voucherUsageLimitReached());
        }

        final userTonightVouchersRef =
            currentUserRef.tonightVouchers.doc(eventId);

        tx.update(voucherRef, {
          'usedBy': FieldValue.arrayUnion([currentUser.id])
        });
        tx.update(currentUserRef, {
          'lastTonightVoucherUseAt': DateTime.now(),
          'ticketsCount': FieldValue.increment(1),
        });

        final userTonightVoucher =
            UserTonightVoucher.fromTonightVoucher(tonightVoucher);
        final userTonightVoucherDto =
            UserTonightVoucherDto.fromDomain(userTonightVoucher);

        tx.set(userTonightVouchersRef, userTonightVoucherDto.toJson());

        return right(unit);
      });
    } on FirebaseException catch (e) {
      _logger.e(e);
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TonightVoucherFailure.unexpected());
    }
  }

  _checkIfHasUsedVoucherInLast12Hours(DateTime? lastUse) {
    if (lastUse == null) return false;
    return lastUse.isAfter(DateTime.now().subtract(const Duration(hours: 12)));
  }
}
