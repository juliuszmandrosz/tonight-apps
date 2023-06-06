import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_entity.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_facade.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_failure.dart';
import 'package:tonight/infrastructure/time_task_vouchers/dtos/time_task_voucher_dto.dart';

class FirebaseTimeTaskVoucherFacade implements TimeTaskVoucherFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseTimeTaskVoucherFacade(
    this._firestore,
    this._auth,
    this._crashlytics,
    this._logger,
  );

  @override
  Stream<Either<TimeTaskVoucherFailure, TimeTaskVoucher>>
      getVoucherByTimeTaskId(
    String timeTaskId,
  ) async* {
    final currentUserRef = _firestore.getCurrentUserDocRef(_auth);
    final voucherRef = currentUserRef.timeTaskVouchers.doc(timeTaskId);

    yield* voucherRef.snapshots().map((snapshot) {
      if (!snapshot.exists) {
        return left<TimeTaskVoucherFailure, TimeTaskVoucher>(
            const TimeTaskVoucherFailure.voucherNotExists());
      }
      return right<TimeTaskVoucherFailure, TimeTaskVoucher>(
        TimeTaskVoucherDto.fromFirebase(snapshot).toDomain(),
      );
    }).handleError((e) {
      if (e is FirebaseException) {
        _logger.e(e);
        _crashlytics.recordError(e, StackTrace.current);
        return left(const TimeTaskVoucherFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<TimeTaskVoucherFailure, Unit>> activateVoucher(
    String timeTaskId,
  ) async {
    try {
      final currentUserRef = _firestore.getCurrentUserDocRef(_auth);
      return await _firestore.runTransaction(
        (tx) async {
          final timeTaskVoucherRef =
              currentUserRef.timeTaskVouchers.doc(timeTaskId);
          final voucherDoc = await tx.get(timeTaskVoucherRef);
          final voucher = TimeTaskVoucherDto.fromFirebase(voucherDoc);
          if (voucher.validUntil.isBefore(DateTime.now())) {
            return left(const TimeTaskVoucherFailure.voucherExpired());
          }
          tx.update(
            timeTaskVoucherRef,
            {
              'isActivated': true,
              'usedAt': Timestamp.now(),
            },
          );
          return right(unit);
        },
      );
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const TimeTaskVoucherFailure.unexpected());
    }
  }

  @override
  Future<Either<TimeTaskVoucherFailure, Unit>> acquireReward({
    required String wallPhotoId,
    required String timeTaskId,
  }) async {
    try {
      final currentUserRef = _firestore.getCurrentUserDocRef(_auth);
      final wallPhotoRef = _firestore.wallPhotos.doc(wallPhotoId);
      final voucherRef = currentUserRef.timeTaskVouchers.doc(timeTaskId);
      await _firestore.runTransaction(
        (tx) async {
          tx.update(wallPhotoRef, {'isRewardAcquired': true});
          tx.update(voucherRef, {'isRewardAcquired': true});
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TimeTaskVoucherFailure.unexpected());
    }
  }
}
