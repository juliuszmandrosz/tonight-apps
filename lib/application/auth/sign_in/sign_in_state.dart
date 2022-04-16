part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailInput email,
    required PasswordInput password,
    required FormzStatus status,
    required Option<String> errorMessage,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: const EmailInput.pure(),
        password: const PasswordInput.pure(),
        status: FormzStatus.pure,
        errorMessage: none(),
      );
}
