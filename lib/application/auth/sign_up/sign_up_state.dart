part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required EmailInput email,
    required AccessCodeInput accessCode,
    required FormzStatus status,
    required Option<String> errorMessage,
    required Option<String> linkSentMessage,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        email: const EmailInput.pure(),
        accessCode: const AccessCodeInput.pure(),
        status: FormzStatus.pure,
        errorMessage: none(),
        linkSentMessage: none(),
      );
}
