import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_scanner/application/sign_up/form_inputs/access_code_input.dart';

part 'sign_up_cubit.freezed.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SelectorAuthFacade _authFacade;

  SignUpCubit(this._authFacade) : super(SignUpState.initial());

  Future<void> signUp() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess =
        await _authFacade.signUpWithEmailPasswordAndAccessCodeAsSelector(
      state.email.value,
      state.password.value,
      state.accessCode.value,
    );

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (success) => emit(
        state.copyWith(status: FormzStatus.submissionSuccess),
      ),
    );
  }

  void emailChanged(String value) {
    final email = EmailInput.dirty(value);
    emit(state.copyWith(email: email));
  }

  void passwordChanged(String value) {
    final password = PasswordInput.dirty(value: value);
    final confirmedPassword = ConfirmPasswordInput.dirty(
      password: password.value,
      value: state.confirmedPassword.value,
    );
    emit(
      state.copyWith(
        password: password,
        confirmedPassword: confirmedPassword,
      ),
    );
  }

  void confirmedPasswordChanged(String value) {
    final confirmedPassword = ConfirmPasswordInput.dirty(
      password: state.password.value,
      value: value,
    );
    emit(
      state.copyWith(
        confirmedPassword: confirmedPassword,
      ),
    );
  }

  void accessCodeChanged(String value) {
    final accessCode = AccessCodeInput.dirty(value);
    emit(state.copyWith(accessCode: accessCode));
  }

  _validateForm() {
    emit(
      state.copyWith(
        email: EmailInput.dirty(state.email.value),
        password: PasswordInput.dirty(value: state.password.value),
        confirmedPassword: ConfirmPasswordInput.dirty(
          password: state.password.value,
          value: state.confirmedPassword.value,
        ),
        accessCode: AccessCodeInput.dirty(state.accessCode.value),
      ),
    );

    final status = Formz.validate([
      state.email,
      state.password,
      state.confirmedPassword,
      state.accessCode,
    ]);

    emit(state.copyWith(status: status));
    return status.isValidated;
  }

  _emitFailure(AuthFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(failure.message),
        status: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }
}
