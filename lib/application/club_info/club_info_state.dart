part of 'club_info_cubit.dart';

@freezed
class ClubInfoState with _$ClubInfoState {
  const factory ClubInfoState({
    required CubitStatus status,
    required Option<Club> club,
  }) = _ClubInfoState;

  factory ClubInfoState.initial() => ClubInfoState(
        status: CubitStatus.initial,
        club: none(),
      );
}
