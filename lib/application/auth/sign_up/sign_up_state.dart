part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required EmailInput email,
    required PasswordInput password,
    required ConfirmPasswordInput confirmedPassword,
    required FormzStatus status,
    required Option<String> errorMessage,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        email: const EmailInput.pure(),
        password: const PasswordInput.pure(),
        confirmedPassword: const ConfirmPasswordInput.pure(),
        status: FormzStatus.pure,
        errorMessage: none(),
      );
}
