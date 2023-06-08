import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_failure.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_entity.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_facade.dart';
import 'package:tonight/infrastructure/user_tonight_vouchers/dtos/user_tonight_voucher_dto.dart';

class FirebaseUserTonightVoucherFacade implements UserTonightVoucherFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseUserTonightVoucherFacade(
    this._firestore,
    this._auth,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<TonightVoucherFailure, Unit>> redeemTonightVoucher(
    String eventId,
  ) async {
    try {
      final currentUserRef = _firestore.getCurrentUserDocRef(_auth);
      final voucherRef = currentUserRef.tonightVouchers.doc(eventId);
      await voucherRef.update({'isRewardRedeemed': true});
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const TonightVoucherFailure.unexpected());
    }
  }

  @override
  Future<Either<TonightVoucherFailure, List<UserTonightVoucher>>>
      fetchUserVouchers({
    int pageSize = 20,
    String? lastVoucherId,
  }) async {
    try {
      final currentUserRef = _firestore.getCurrentUserDocRef(_auth);
      var query = currentUserRef.tonightVouchers
          .orderBy('createdAt', descending: true)
          .limit(pageSize);
      if (lastVoucherId != null) {
        final lastVoucherRef =
            currentUserRef.tonightVouchers.doc(lastVoucherId);
        final lastVoucherDoc = await lastVoucherRef.get();
        query = query.startAfterDocument(lastVoucherDoc);
      }
      final vouchers = await query.get();
      final result = vouchers.docs
          .map((doc) => UserTonightVoucherDto.fromFirebase(doc).toDomain())
          .toList();
      return right(result);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const TonightVoucherFailure.unexpected());
    }
  }
}
