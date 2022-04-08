part of 'reset_password_cubit.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required EmailInput email,
    required FormzStatus status,
    required Option<String> errorMessage,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => ResetPasswordState(
        email: const EmailInput.pure(),
        status: FormzStatus.pure,
        errorMessage: none(),
      );
}
