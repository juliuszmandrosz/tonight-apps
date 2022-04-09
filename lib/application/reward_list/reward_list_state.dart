part of 'reward_list_cubit.dart';

@freezed
class RewardListState with _$RewardListState {
  const RewardListState._();

  factory RewardListState({
    required CubitStatus status,
    required List<Reward> rewards,
  }) = _RewardListState;

  factory RewardListState.initial() => RewardListState(
        status: CubitStatus.initial,
        rewards: [],
      );
}
