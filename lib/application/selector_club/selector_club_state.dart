part of 'selector_club_cubit.dart';

@freezed
class SelectorClubState with _$SelectorClubState {
  const factory SelectorClubState({
    required Option<Club> selectorClub,
    required List<Reward> rewards,
    required CubitStatus status,
    required Option<String> errorMessage,
    required FormzStatus enterAccessCodeStatus,
    required String accessCode,
  }) = _SelectorClubState;

  factory SelectorClubState.initial() => SelectorClubState(
        selectorClub: none(),
        rewards: [],
        status: CubitStatus.initial,
        errorMessage: none(),
        enterAccessCodeStatus: FormzStatus.pure,
        accessCode: '',
      );
}
