import 'package:account_settings/domain/user_account_facade.dart';
import 'package:common/extensions/either_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:rewards/domain/reward_entity.dart';
import 'package:rewards/domain/user_reward_facade.dart';
import 'package:tonight/domain/club_rewards/club_rewards_failure.dart';
import 'package:tonight/domain/club_rewards/club_rewards_with_attendance_model.dart';

class ClubRewardsAggregator {
  final UserRewardFacade _rewardFacade;
  final UserAccountFacade _accountFacade;

  ClubRewardsAggregator(this._rewardFacade, this._accountFacade);

  Future<Either<ClubRewardsFailure, ClubRewardsWithAttendance>> getClubRewards(
    String clubId,
  ) async {
    final rewardsResult = await _rewardFacade.getRewardsByClubId(clubId);
    if (rewardsResult.isLeft()) {
      return left(const ClubRewardsFailure.unexpected());
    }
    final userAccountResult = await _accountFacade.getUserAccount().first;
    if (userAccountResult.isLeft()) {
      return left(const ClubRewardsFailure.unexpected());
    }
    final result = _mergeAttendanceWithClubRewards(
      clubId: clubId,
      rewards: rewardsResult.getRightOrCrash(),
      userClubsAttendance: userAccountResult.getRightOrCrash().attendance,
    );
    return right(result);
  }

  ClubRewardsWithAttendance _mergeAttendanceWithClubRewards({
    required String clubId,
    required List<Reward> rewards,
    required Map<String, int> userClubsAttendance,
  }) {
    final userAttendance = userClubsAttendance[clubId];

    return ClubRewardsWithAttendance(
      rewards: rewards,
      userAttendance: userAttendance ?? 0,
    );
  }
}
