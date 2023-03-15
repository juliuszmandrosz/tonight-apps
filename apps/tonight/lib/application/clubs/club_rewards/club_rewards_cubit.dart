import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rewards/rewards.dart';
import 'package:tonight/application/profile/profile_cubit_hub.dart';
import 'package:tonight/domain/clubs/club_rewards_with_attendance_entity.dart';

part 'club_rewards_cubit.freezed.dart';
part 'club_rewards_state.dart';

class ClubRewardsCubit extends Cubit<ClubRewardsState> {
  final UserRewardFacade _rewardFacade;
  final ProfileBroadcastSubject _profileBroadcastSubject;

  ClubRewardsCubit(this._rewardFacade, this._profileBroadcastSubject)
      : super(ClubRewardsState.initial());

  Future<void> getRewards(String clubId) async {
    emit(state.copyWith(clubId: clubId, status: CubitStatus.loading));

    final failureOrSuccess = await _rewardFacade.getRewardsByClubId(clubId);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (rewards) async {
        final userProfile = await _profileBroadcastSubject.getSubject().first;
        if (userProfile.initialStatus == CubitStatus.success) {
          final clubRewardsWithAttendance = _mergeAttendanceWithClubRewards(
              rewards, userProfile.user.attendance);
          emit(state.copyWith(
              status: CubitStatus.success,
              clubRewardsWithAttendance: some(clubRewardsWithAttendance)));
        }
        if (userProfile.initialStatus == CubitStatus.failure) {
          emit(state.copyWith(status: CubitStatus.failure));
        }
      },
    );
  }

  ClubRewardsWithAttendance _mergeAttendanceWithClubRewards(
      List<Reward> rewards, Map<String, int> userClubsAttendance) {
    final userAttendance = userClubsAttendance[state.clubId];

    return ClubRewardsWithAttendance(
        rewards: rewards, userAttendance: userAttendance ?? 0);
  }
}
