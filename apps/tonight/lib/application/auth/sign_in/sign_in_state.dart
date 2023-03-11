part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailInput email,
    required FormzStatus signInStatus,
    required Option<String> errorMessage,
    required Option<String> linkSentMessage,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: const EmailInput.pure(),
        signInStatus: FormzStatus.pure,
        errorMessage: none(),
        linkSentMessage: none(),
      );
}
