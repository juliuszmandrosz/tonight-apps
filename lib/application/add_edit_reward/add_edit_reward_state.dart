part of 'add_edit_reward_cubit.dart';

@freezed
class AddEditRewardState with _$AddEditRewardState {
  const factory AddEditRewardState({
    required RequiredEntries requiredEntries,
    required RewardDescription rewardDescription,
    required FormzStatus status,
    required Option<String> errorMessage,
    required Option<Reward> updatingReward,
  }) = _AddEditRewardState;

  factory AddEditRewardState.initial() => AddEditRewardState(
        requiredEntries: const RequiredEntries.pure(),
        rewardDescription: const RewardDescription.pure(),
        status: FormzStatus.pure,
        errorMessage: none(),
        updatingReward: none(),
      );
}
