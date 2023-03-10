import 'package:dartz/dartz.dart';
import 'package:raver_rewards/domain/failures/selector_reward_failure.dart';
import 'package:raver_rewards/domain/reward_entity.dart';

abstract class SelectorRewardFacade {
  Stream<Either<SelectorRewardFailure, List<Reward>>>
      getRewardsFromCurrentSelectorClub();
}
