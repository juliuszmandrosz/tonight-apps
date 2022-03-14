import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/auth/form_inputs/confirm_password_input.dart';
import 'package:raver/application/auth/form_inputs/email_input.dart';
import 'package:raver/application/auth/form_inputs/password_input.dart';
import 'package:raver/domain/auth/auth_facade.dart';
import 'package:raver/domain/auth/auth_failure.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthFacade _authFacade;

  SignUpCubit(this._authFacade) : super(SignUpState.initial());

  Future<void> signUpWithEmailAndPassword() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _authFacade.signUpWithEmailAndPassword(
      email: state.email.value,
      password: state.password.value,
    );

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (success) => emit(
        state.copyWith(
          status: FormzStatus.submissionSuccess,
        ),
      ),
    );
  }

  void emailChanged(String value) {
    final email = EmailInput.dirty(value);
    emit(
      state.copyWith(
        email: email,
      ),
    );
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

  _validateForm() {
    emit(
      state.copyWith(
        email: EmailInput.dirty(state.email.value),
        password: PasswordInput.dirty(value: state.password.value),
        confirmedPassword: ConfirmPasswordInput.dirty(
          password: state.password.value,
          value: state.confirmedPassword.value,
        ),
      ),
    );

    final status = Formz.validate([
      state.email,
      state.password,
      state.confirmedPassword,
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

    emit(state.copyWith(errorMessage: some(failure.message)));
  }
}
