import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/application/application.dart';
import 'package:raver_rewards/raver_rewards.dart';
import 'package:raver_translations/raver_translations.dart';

part 'reward_list_cubit.freezed.dart';

part 'reward_list_state.dart';

class RewardListCubit extends Cubit<RewardListState> {
  final PartnerRewardFacade _rewardFacade;
  late StreamSubscription rewardsSubscription;

  RewardListCubit(this._rewardFacade) : super(RewardListState.initial());

  void getRewards() {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    rewardsSubscription = _rewardFacade.getCurrentPartnerRewards().listen(
      (result) {
        result.fold(
          (failure) => emit(
            state.copyWith(initialStatus: CubitStatus.failure),
          ),
          (rewards) => emit(
            state.copyWith(
              initialStatus: CubitStatus.success,
              rewards: rewards,
            ),
          ),
        );
      },
    );
  }

  void deleteReward(Reward reward) async {
    final rewards = state.rewards;
    final rewardsCopy = [...state.rewards];

    rewards.remove(reward);
    emit(state.copyWith(rewards: rewards));

    final failureOrSuccess = await _rewardFacade.deleteReward(reward.id);

    failureOrSuccess.fold(
      (failure) => _emitDeleteFailure(failure, rewardsCopy),
      (success) => emit(
        state.copyWith(deletingStatus: CubitStatus.success),
      ),
    );
  }

  _emitDeleteFailure(RewardFailure failure, List<Reward> previousRewards) {
    emit(
      state.copyWith(
        errorMessage: some(S().errorDeletingReward),
        deletingStatus: CubitStatus.failure,
        rewards: previousRewards,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  @override
  Future<void> close() {
    rewardsSubscription.cancel();
    return super.close();
  }
}
