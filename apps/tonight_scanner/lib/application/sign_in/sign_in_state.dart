part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailInput email,
    required String accessCode,
    required FormzStatus status,
    required Option<String> errorMessage,
    required Option<String> linkSentMessage,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: const EmailInput.pure(),
        accessCode: '',
        status: FormzStatus.pure,
        errorMessage: none(),
        linkSentMessage: none(),
      );
}
