part of 'selector_club_cubit.dart';

@freezed
class SelectorClubState with _$SelectorClubState {
  const factory SelectorClubState({
    required Option<Club> selectorClub,
    required CubitStatus status,
    required Option<String> errorMessage,
    required FormzStatus enterAccessCodeStatus,
    required AccessCodeInput accessCode,
  }) = _SelectorClubState;

  factory SelectorClubState.initial() => SelectorClubState(
        selectorClub: none(),
        status: CubitStatus.initial,
        errorMessage: none(),
        enterAccessCodeStatus: FormzStatus.pure,
        accessCode: const AccessCodeInput.pure(),
      );
}
