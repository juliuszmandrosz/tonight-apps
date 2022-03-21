part of 'username_cubit.dart';

@freezed
class UsernameState with _$UsernameState {
  const factory UsernameState({
    required UsernameInput username,
    required FormzStatus status,
    required Option<String> errorMessage,
  }) = _UsernameState;

  factory UsernameState.initial() => UsernameState(
        username: const UsernameInput.pure(),
        status: FormzStatus.pure,
        errorMessage: none(),
      );
}
