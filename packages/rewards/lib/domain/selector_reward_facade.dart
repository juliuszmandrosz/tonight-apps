import 'package:dartz/dartz.dart';
import 'package:rewards/domain/failures/selector_reward_failure.dart';
import 'package:rewards/domain/reward_entity.dart';

abstract class SelectorRewardFacade {
  Stream<Either<SelectorRewardFailure, List<Reward>>>
      getRewardsFromCurrentSelectorClub();
}
