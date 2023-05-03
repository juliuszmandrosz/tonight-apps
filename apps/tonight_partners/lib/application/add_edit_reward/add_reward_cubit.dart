import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rewards/rewards.dart';
import 'package:tonight_partners/application/add_edit_reward/form_inputs/required_entries.dart';
import 'package:tonight_partners/application/add_edit_reward/form_inputs/reward_description.dart';
import 'package:translations/translations.dart';

part 'add_reward_cubit.freezed.dart';

part 'add_reward_state.dart';

class AddRewardCubit extends Cubit<AddRewardState> {
  final PartnerRewardFacade _rewardFacade;

  AddRewardCubit(this._rewardFacade) : super(AddRewardState.initial());

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

  _emitFailure(PartnerRewardFailure failure, String message) {
    emit(
      state.copyWith(
        errorMessage: some(message),
        status: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }
}
