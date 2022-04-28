import 'package:dartz/dartz.dart';
import 'package:raver_rewards/domain/reward_entity.dart';
import 'package:raver_rewards/domain/reward_failure.dart';

abstract class UserRewardFacade {
  Future<Either<RewardFailure, List<Reward>>> getRewardsByClubId(String clubId);
}
