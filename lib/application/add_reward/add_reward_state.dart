part of 'add_reward_cubit.dart';

@freezed
class AddRewardState with _$AddRewardState {
  const factory AddRewardState({
    required RequiredEntries requiredEntries,
    required RewardDescription rewardDescription,
    required FormzStatus status,
    required Option<String> errorMessage,
  }) = _AddRewardState;

  factory AddRewardState.initial() => AddRewardState(
        requiredEntries: const RequiredEntries.pure(),
        rewardDescription: const RewardDescription.pure(),
        status: FormzStatus.pure,
        errorMessage: none(),
      );
}
