import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_rewards/domain/reward_entity.dart';
import 'package:raver_rewards/domain/reward_facade.dart';
import 'package:raver_rewards/domain/reward_failure.dart';
import 'package:raver_rewards/infrastructure/reward_dto.dart';

class FirebaseRewardFacade implements RewardFacade {
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
      final clubDoc = await _getCurrentPartnerClubDocumentRef();

      final rewardDto = RewardDto.fromDomain(reward);

      await clubDoc.rewardsCollection.doc(reward.id).set(rewardDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during adding reward EXCEPTION: $e");
      return left(const RewardFailure.unexpected());
    }
  }

  @override
  Stream<Either<RewardFailure, List<Reward>>>
      getCurrentPartnerRewards() async* {
    final clubDoc = await _getCurrentPartnerClubDocumentRef();
    yield* clubDoc.rewardsCollection
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
            "Firebase Exception during getting current partner rewards EXCEPTION: $e");
        return left(const RewardFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<RewardFailure, Unit>> deleteReward(String rewardId) async {
    try {
      final clubDoc = await _getCurrentPartnerClubDocumentRef();

      await clubDoc.rewardsCollection.doc(rewardId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during deleting reward EXCEPTION: $e");
      return left(const RewardFailure.unexpected());
    }
  }

  Future<DocumentReference> _getCurrentPartnerClubDocumentRef() async {
    final partnerDoc = await _getCurrentPartnerDocument();
    final partnerClubId = partnerDoc.get('clubId');
    return _firestore.clubCollection.doc(partnerClubId);
  }

  Future<DocumentSnapshot> _getCurrentPartnerDocument() {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser == null) throw NotAuthenticatedError();

    return _firestore.partnersCollection.doc(firebaseUser.uid).get();
  }

  @override
  Future<Either<RewardFailure, Unit>> updateReward(Reward reward) async {
    try {
      final clubDoc = await _getCurrentPartnerClubDocumentRef();

      final rewardDto = RewardDto.fromDomain(reward);

      await clubDoc.rewardsCollection.doc(reward.id).update(rewardDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during updating reward EXCEPTION: $e");
      return left(const RewardFailure.unexpected());
    }
  }
}
