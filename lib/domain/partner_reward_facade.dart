import 'package:dartz/dartz.dart';
import 'package:raver_rewards/domain/failures/partner_reward_failure.dart';
import 'package:raver_rewards/domain/reward_entity.dart';

abstract class PartnerRewardFacade {
  Future<Either<PartnerRewardFailure, Unit>> addReward(Reward reward);

  Stream<Either<PartnerRewardFailure, List<Reward>>> getCurrentPartnerRewards();

  Future<Either<PartnerRewardFailure, Unit>> deleteReward(String rewardId);
}
