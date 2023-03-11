part of 'club_rewards_cubit.dart';

@freezed
abstract class ClubRewardsState with _$ClubRewardsState {
  const factory ClubRewardsState({
    required String clubId,
    required Option<ClubRewardsWithAttendance> clubRewardsWithAttendance,
    required CubitStatus status,
  }) = _ClubRewardsState;

  factory ClubRewardsState.initial() => ClubRewardsState(
        clubId: '',
        clubRewardsWithAttendance: none(),
        status: CubitStatus.initial,
      );
}
