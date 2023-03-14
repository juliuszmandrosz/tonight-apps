import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:common/common.dart';
import 'package:rewards/domain/domain.dart';
import 'package:rewards/infrastructure/reward_dto.dart';

class FirebaseRewardFacade
    implements UserRewardFacade, PartnerRewardFacade, SelectorRewardFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseRewardFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required FirebaseCrashlytics crashlytics,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _crashlytics = crashlytics,
        _logger = logger;

  @override
  Future<Either<PartnerRewardFailure, Unit>> addReward(Reward reward) async {
    try {
      final clubDocRef =
          await _firestore.getCurrentPartnerClubDocRef(_firebaseAuth);

      final rewardDto = RewardDto.fromDomain(reward);

      await clubDocRef.rewardsCollection.doc(reward.id).set(rewardDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<PartnerRewardFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception adding reward EXCEPTION: $e',
          unexpectedFailure: const PartnerRewardFailure.unexpected(),
          permissionDeniedFailure:
              const PartnerRewardFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Stream<Either<PartnerRewardFailure, List<Reward>>>
      getCurrentPartnerRewards() async* {
    final clubDocRef =
        await _firestore.getCurrentPartnerClubDocRef(_firebaseAuth);

    yield* clubDocRef.rewardsCollection
        .orderBy('requiredEntries')
        .snapshots()
        .map(
          (snapshot) => right<PartnerRewardFailure, List<Reward>>(
            snapshot.docs
                .map((doc) => RewardDto.fromFirebase(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException) {
        return left(
          handleFirebaseError<PartnerRewardFailure>(
            logger: _logger,
            crashlytics: _crashlytics,
            exception: e,
            message:
                'Firebase Exception getting current partner rewards EXCEPTION: $e',
            unexpectedFailure: const PartnerRewardFailure.unexpected(),
            permissionDeniedFailure:
                const PartnerRewardFailure.permissionDenied(),
          ),
        );
      }
    });
  }

  @override
  Future<Either<PartnerRewardFailure, Unit>> deleteReward(
      String rewardId) async {
    try {
      final clubDocRef =
          await _firestore.getCurrentPartnerClubDocRef(_firebaseAuth);

      await clubDocRef.rewardsCollection.doc(rewardId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<PartnerRewardFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception deleting reward EXCEPTION: $e',
          unexpectedFailure: const PartnerRewardFailure.unexpected(),
          permissionDeniedFailure:
              const PartnerRewardFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserRewardFailure, List<Reward>>> getRewardsByClubId(
    String clubId,
  ) async {
    try {
      final result = await _firestore.clubCollection
          .doc(clubId)
          .rewardsCollection
          .orderBy('requiredEntries')
          .get();

      return right<UserRewardFailure, List<Reward>>(
        result.docs
            .map((doc) => RewardDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserRewardFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message:
              'Firebase Exception getting rewards by club id EXCEPTION: $e',
          unexpectedFailure: const UserRewardFailure.unexpected(),
          permissionDeniedFailure: const UserRewardFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Stream<Either<SelectorRewardFailure, List<Reward>>>
      getRewardsFromCurrentSelectorClub() async* {
    final selectorClubDocRef =
        await _firestore.getCurrentSelectorClubDocRef(_firebaseAuth);

    yield* selectorClubDocRef.rewardsCollection
        .snapshots()
        .map(
          (snapshot) => right<SelectorRewardFailure, List<Reward>>(
            snapshot.docs
                .map((doc) => RewardDto.fromFirebase(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException) {
        return left(
          handleFirebaseError<SelectorRewardFailure>(
            logger: _logger,
            crashlytics: _crashlytics,
            exception: e,
            message:
                'Firebase Exception getting rewards from current selector club EXCEPTION: $e',
            unexpectedFailure: const SelectorRewardFailure.unexpected(),
            permissionDeniedFailure:
                const SelectorRewardFailure.permissionDenied(),
          ),
        );
      }
    });
  }
}
