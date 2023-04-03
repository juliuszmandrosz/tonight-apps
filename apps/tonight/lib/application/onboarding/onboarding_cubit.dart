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

  Future<void> setUsernameForUser() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess =
        await _userAccountFacade.setUsernameForUser(state.username.value);

    failureOrSuccess.fold(
        (failure) => _emitFailure(failure),
        (success) =>
            emit(state.copyWith(status: FormzStatus.submissionSuccess)));
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
    emit(state.copyWith(status: status));

    return status.isValidated;
  }

  _emitFailure(UserProfileFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(_getUserProfileFailureMessage(failure)),
        status: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  _getUserProfileFailureMessage(UserProfileFailure failure) {
    return failure.map(
      unexpected: (_) => S().serverError,
      permissionDenied: (_) => S().operationNotAllowed,
      usernameExists: (_) => S().usernameAlreadyInUse,
    );
  }
}
