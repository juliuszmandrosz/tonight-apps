import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/daily_spin/daily_spin_facade.dart';
import 'package:tonight/domain/daily_spin/daily_spin_failure.dart';
import 'package:tonight/domain/daily_spin/daily_spin_rewards_entity.dart';
import 'package:tonight/infrastructure/daily_spin/dtos/daily_spin_rewards_dto.dart';

class FirebaseDailySpinFacade implements DailySpinFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseDailySpinFacade(
    this._firestore,
    this._auth,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<DailySpinFailure, DailySpinRewards>>
      fetchDailySpinRewards() async {
    try {
      final rewards =
          await _firestore.dailySpinRewards.doc('availableRewards').get();
      final result = DailySpinRewardsDto.fromFirebase(rewards).toDomain();
      return right(result);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const DailySpinFailure.unexpected());
    }
  }

  @override
  Future<Either<DailySpinFailure, Unit>> submitDailySpin(int coins) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_auth);
      await userDocRef.update({
        'raverCoins': FieldValue.increment(coins),
        'lastDailySpinAt': Timestamp.now(),
      });
      return right(unit);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const DailySpinFailure.unexpected());
    }
  }
}
