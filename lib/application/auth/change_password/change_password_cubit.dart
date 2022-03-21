import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_account_settings/raver_account_settings.dart';
import 'package:raver_auth/raver_auth.dart';

part 'change_password_cubit.freezed.dart';
part 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final UserAccountFacade _userAccountFacade;

  ChangePasswordCubit(this._userAccountFacade)
      : super(ChangePasswordState.initial());

  Future<void> changePassword() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _userAccountFacade.changePassword(
        state.oldPassword.value, state.newPassword.value);

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (success) => emit(
        state.copyWith(
          status: FormzStatus.submissionSuccess,
        ),
      ),
    );
  }

  void oldPasswordChanged(String value) {
    final oldPassword = OldPasswordInput.dirty(value);
    emit(
      state.copyWith(
        oldPassword: oldPassword,
      ),
    );
  }

  void newPasswordChanged(String value) {
    final newPassword = PasswordInput.dirty(value: value);
    emit(
      state.copyWith(
        newPassword: newPassword,
      ),
    );
  }

  void newConfirmedPasswordChanged(String value) {
    final newConfirmedPassword = ConfirmPasswordInput.dirty(
        password: state.newPassword.value, value: value);
    emit(
      state.copyWith(
        newConfirmedPassword: newConfirmedPassword,
      ),
    );
  }

  _validateForm() {
    emit(
      state.copyWith(
          oldPassword: OldPasswordInput.dirty(state.oldPassword.value),
          newPassword: PasswordInput.dirty(value: state.newPassword.value),
          newConfirmedPassword: ConfirmPasswordInput.dirty(
            password: state.oldPassword.value,
            value: state.newConfirmedPassword.value,
          )),
    );
    final status = Formz.validate([
      state.oldPassword,
      state.newPassword,
      state.newConfirmedPassword,
    ]);

    emit(state.copyWith(status: status));

    return status.isValidated;
  }

  _emitFailure(ProfileFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(failure.message),
        status: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }
}
