import 'package:dartz/dartz.dart';
import 'package:raver_rewards/domain/reward_entity.dart';
import 'package:raver_rewards/domain/reward_failure.dart';

abstract class PartnerRewardFacade {
  Future<Either<RewardFailure, Unit>> addReward(Reward reward);

  Stream<Either<RewardFailure, List<Reward>>> getCurrentPartnerRewards();

  Future<Either<RewardFailure, Unit>> deleteReward(String rewardId);

  Future<Either<RewardFailure, Unit>> updateReward(Reward reward);
}
