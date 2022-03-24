import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_partners/application/add_edit_reward/form_inputs/required_entries.dart';
import 'package:raver_partners/application/add_edit_reward/form_inputs/reward_description.dart';
import 'package:raver_rewards/raver_rewards.dart';
import 'package:raver_translations/raver_translations.dart';

part 'add_edit_reward_cubit.freezed.dart';

part 'add_edit_reward_state.dart';

class AddEditRewardCubit extends Cubit<AddEditRewardState> {
  final PartnerRewardFacade _rewardFacade;

  AddEditRewardCubit(this._rewardFacade) : super(AddEditRewardState.initial());

  void requiredEntriesChanged(int? value) {
    final entries = RequiredEntries.dirty(value);
    emit(state.copyWith(requiredEntries: entries));
  }

  void rewardDescriptionChanged(String value) {
    final description = RewardDescription.dirty(value);
    emit(state.copyWith(rewardDescription: description));
  }

  void addReward() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final reward = Reward(
      description: state.rewardDescription.value,
      requiredEntries: state.requiredEntries.value!,
    );

    final failureOrSuccess = await _rewardFacade.addReward(reward);

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure, S().errorAddingReward),
      (success) => emit(
        state.copyWith(status: FormzStatus.submissionSuccess),
      ),
    );
  }

  void updateReward() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final reward = state.updatingReward.fold(
      () {},
      (updatingReward) => updatingReward.copyWith(
        requiredEntries: state.requiredEntries.value,
        description: state.rewardDescription.value,
      ),
    );

    final failureOrSuccess = await _rewardFacade.updateReward(reward!);

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure, S().errorUpdatingReward),
      (success) => emit(
        state.copyWith(status: FormzStatus.submissionSuccess),
      ),
    );
  }

  addRewardToState(Reward reward) {
    rewardDescriptionChanged(reward.description);
    requiredEntriesChanged(reward.requiredEntries);
    emit(state.copyWith(updatingReward: some(reward)));
  }

  _validateForm() {
    emit(
      state.copyWith(
        requiredEntries: RequiredEntries.dirty(state.requiredEntries.value),
        rewardDescription:
            RewardDescription.dirty(state.rewardDescription.value),
      ),
    );

    final status =
        Formz.validate([state.requiredEntries, state.rewardDescription]);

    emit(state.copyWith(status: status));

    return status.isValid;
  }

  _emitFailure(RewardFailure failure, String message) {
    emit(
      state.copyWith(
        errorMessage: some(message),
        status: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }
}
