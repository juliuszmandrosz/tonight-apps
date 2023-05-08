import 'dart:typed_data';

import 'package:account_settings/account_settings.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/auth/form_inputs/username.dart';
import 'package:translations/translations.dart';

part 'onboarding_cubit.freezed.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final UserAccountFacade _userAccountFacade;

  OnboardingCubit(this._userAccountFacade) : super(OnboardingState.initial());

  Future<void> submitOnboarding() async {
    if (!_validateForm()) return;

    emit(state.copyWith(submissionStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _userAccountFacade.submitOnboardingForUser(
      username: state.username.value,
      profilePicture: state.userPhoto.fold(() => null, (picture) => picture),
    );

    failureOrSuccess.fold(
      _emitFailure,
          (success) =>
          emit(state.copyWith(submissionStatus: FormzStatus.submissionSuccess)),
    );
  }

  void usernameChanged(String value) {
    final username = Username.dirty(value);
    emit(state.copyWith(username: username));
  }

  Future<void> pickProfilePhoto() async {
    final result = await pickImage(S().addPhoto);
    if (result == null) return;
    _userPhotoChanged(result);
  }

  deletePhoto() {
    emit(state.copyWith(userPhoto: none()));
  }

  void _userPhotoChanged(Uint8List value) {
    emit(state.copyWith(userPhoto: some(value)));
  }

  _validateForm() {
    emit(
      state.copyWith(
        username: Username.dirty(state.username.value),
      ),
    );

    final status = Formz.validate([
      state.username,
    ]);
    emit(state.copyWith(submissionStatus: status));

    return status.isValidated;
  }

  _emitFailure(UserAccountFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(failure.message),
        submissionStatus: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }
}
