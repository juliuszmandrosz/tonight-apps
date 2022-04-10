import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_auth/raver_auth.dart';

part 'sign_in_cubit.freezed.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final SelectorAuthFacade _authFacade;

  SignInCubit(this._authFacade) : super(SignInState.initial());

  Future<void> signInWithEmailAndPassword() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess =
        await _authFacade.signInWithEmailAndPasswordAsSelector(
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
    final password = PasswordInput.dirty(isSignIn: true, value: value);
    emit(
      state.copyWith(
        password: password,
      ),
    );
  }

  _validateForm() {
    emit(
      state.copyWith(
        email: EmailInput.dirty(state.email.value),
        password: PasswordInput.dirty(
          isSignIn: true,
          value: state.password.value,
        ),
      ),
    );

    final status = Formz.validate([state.email, state.password]);

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
