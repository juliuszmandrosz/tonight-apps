part of 'change_password_cubit.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required OldPasswordInput oldPassword,
    required PasswordInput newPassword,
    required ConfirmPasswordInput newConfirmedPassword,
    required FormzStatus status,
    required Option<String> errorMessage,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
        oldPassword: const OldPasswordInput.pure(),
        newPassword: const PasswordInput.pure(),
        newConfirmedPassword: const ConfirmPasswordInput.pure(),
        status: FormzStatus.pure,
        errorMessage: none(),
      );
}
