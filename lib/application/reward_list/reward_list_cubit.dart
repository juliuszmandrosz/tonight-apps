import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/application/application.dart';
import 'package:raver_rewards/raver_rewards.dart';

part 'reward_list_cubit.freezed.dart';

part 'reward_list_state.dart';

class RewardListCubit extends Cubit<RewardListState> {
  final PartnerRewardFacade _rewardFacade;
  late StreamSubscription rewardsSubscription;

  RewardListCubit(this._rewardFacade) : super(RewardListState.initial());

  void getRewards() {
    emit(state.copyWith(status: CubitStatus.loading));

    rewardsSubscription = _rewardFacade.getCurrentPartnerRewards().listen(
      (result) {
        result.fold(
          (failure) => emit(
            state.copyWith(status: CubitStatus.failure),
          ),
          (rewards) => emit(
            state.copyWith(
              status: CubitStatus.success,
              rewards: rewards,
            ),
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    rewardsSubscription.cancel();
    return super.close();
  }
}
