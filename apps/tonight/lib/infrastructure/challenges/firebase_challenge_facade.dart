import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:tonight/domain/challenges/challenge_facade.dart';
import 'package:tonight/domain/challenges/challenge_failure.dart';
import 'package:tonight/infrastructure/challenges/dtos/challenge_dto.dart';

class FirebaseChallengeFacade implements ChallengeFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseChallengeFacade(
    this._firestore,
    this._crashlytics,
    this._logger,
  );

  @override
  // value 1 current period, value 2 previous period
  Future<Either<ChallengeFailure, Tuple2<List<Challenge>, List<Challenge>>>>
      getChallenges() async {
    try {
      final currentPeriod = await _firestore.getCurrentChallengePeriodNumber();
      final currentChallenges = await _firestore.challenges
          .where('periodNumber', isEqualTo: currentPeriod)
          .get();
      final previousChallenges = await _firestore.challenges
          .where('periodNumber', isEqualTo: currentPeriod - 1)
          .get();
      final result = tuple2(
        currentChallenges.docs
            .map((doc) => ChallengeDto.fromFirebase(doc).toDomain())
            .toList(),
        previousChallenges.docs
            .map((doc) => ChallengeDto.fromFirebase(doc).toDomain())
            .toList(),
      );
      return right(result);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const ChallengeFailure.unexpected());
    }
  }
}
