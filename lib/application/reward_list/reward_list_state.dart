part of 'reward_list_cubit.dart';

@freezed
class RewardListState with _$RewardListState {
  const RewardListState._();

  factory RewardListState({
    required CubitStatus initialStatus,
    required CubitStatus deletingStatus,
    required List<Reward> rewards,
    required Option<String> errorMessage,
  }) = _RewardListState;

  factory RewardListState.initial() => RewardListState(
        initialStatus: CubitStatus.initial,
        deletingStatus: CubitStatus.initial,
        rewards: [],
        errorMessage: none(),
      );
}
