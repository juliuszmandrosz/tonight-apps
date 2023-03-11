part of 'invite_selector_cubit.dart';

@freezed
class InviteSelectorState with _$InviteSelectorState {
  const factory InviteSelectorState({
    required CubitStatus status,
    required Option<String> errorMessage,
    required Option<String> accessCode,
  }) = _InviteSelectorState;

  factory InviteSelectorState.initial() => InviteSelectorState(
        status: CubitStatus.initial,
        errorMessage: none(),
        accessCode: none(),
      );
}
