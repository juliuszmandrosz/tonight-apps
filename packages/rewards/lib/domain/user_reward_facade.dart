import 'package:dartz/dartz.dart';
import 'package:rewards/domain/failures/user_reward_failure.dart';
import 'package:rewards/domain/reward_entity.dart';

abstract class UserRewardFacade {
  Future<Either<UserRewardFailure, List<Reward>>> getRewardsByClubId(
    String clubId,
  );
}
