part of 'daily_spin_cubit.dart';

@freezed
class DailySpinState with _$DailySpinState {
  const factory DailySpinState({
    required CubitStatus getRewardsStatus,
    required CubitStatus spinStatus,
    required Option<String> snackbarMessage,
    required Option<int> reward,
    required DailySpinRewards availableRewards,
  }) = _DailySpinState;

  factory DailySpinState.initial() => DailySpinState(
        getRewardsStatus: CubitStatus.initial,
        spinStatus: CubitStatus.initial,
        snackbarMessage: none(),
        reward: none(),
        availableRewards: DailySpinRewards.empty(),
      );
}
