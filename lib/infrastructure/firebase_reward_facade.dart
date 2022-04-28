import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_rewards/domain/domain.dart';
import 'package:raver_rewards/infrastructure/reward_dto.dart';

class FirebaseRewardFacade implements UserRewardFacade, PartnerRewardFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final Logger _logger;

  FirebaseRewardFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _logger = logger;

  @override
  Future<Either<RewardFailure, Unit>> addReward(Reward reward) async {
    try {
      final clubDocRef = _getCurrentClubDocumentRef();

      final rewardDto = RewardDto.fromDomain(reward);

      await clubDocRef.rewardsCollection.doc(reward.id).set(rewardDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during adding reward EXCEPTION: $e");
      return left(const RewardFailure.unexpected());
    }
  }

  @override
  Stream<Either<RewardFailure, List<Reward>>>
      getCurrentPartnerRewards() async* {
    final clubDocRef = _getCurrentClubDocumentRef();
    yield* clubDocRef.rewardsCollection
        .orderBy('requiredEntries')
        .snapshots()
        .map(
          (snapshot) => right<RewardFailure, List<Reward>>(
            snapshot.docs
                .map((doc) => RewardDto.fromFirebase(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException) {
        _logger.e(
          "Firebase Exception during getting "
          "current partner rewards EXCEPTION: $e",
        );
        return left(const RewardFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<RewardFailure, Unit>> deleteReward(String rewardId) async {
    try {
      final clubDocRef = _getCurrentClubDocumentRef();

      await clubDocRef.rewardsCollection.doc(rewardId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during deleting reward EXCEPTION: $e");
      return left(const RewardFailure.unexpected());
    }
  }

  @override
  Future<Either<RewardFailure, Unit>> updateReward(Reward reward) async {
    try {
      final clubDoc = _getCurrentClubDocumentRef();

      final rewardDto = RewardDto.fromDomain(reward);

      await clubDoc.rewardsCollection.doc(reward.id).update(rewardDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during updating reward EXCEPTION: $e");
      return left(const RewardFailure.unexpected());
    }
  }

  @override
  Future<Either<RewardFailure, List<Reward>>> getRewardsByClubId(
    String clubId,
  ) async {
    try {
      final result =
          await _firestore.clubCollection.doc(clubId).rewardsCollection.get();

      return right<RewardFailure, List<Reward>>(
        result.docs
            .map((doc) => RewardDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      _logger.e(
          "Firebase Exception during getting rewards by club id EXCEPTION: $e");
      return left(const RewardFailure.unexpected());
    }
  }

  DocumentReference _getCurrentClubDocumentRef() {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser == null) throw NotAuthenticatedError();

    return _firestore.clubCollection.doc(firebaseUser.uid);
  }
}
