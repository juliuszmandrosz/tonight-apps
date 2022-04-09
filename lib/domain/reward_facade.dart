import 'package:dartz/dartz.dart';
import 'package:raver_rewards/domain/reward_entity.dart';
import 'package:raver_rewards/domain/reward_failure.dart';

abstract class RewardFacade {
  Future<Either<RewardFailure, Unit>> addReward(Reward reward);

  Stream<Either<RewardFailure, List<Reward>>> getCurrentPartnerRewards();
}
