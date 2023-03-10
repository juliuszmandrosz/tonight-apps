part of 'club_info_cubit.dart';

@freezed
class ClubInfoState with _$ClubInfoState {
  const factory ClubInfoState({
    required CubitStatus status,
    required Option<Club> club,
    required Option<CurrencyParams> currencyParams,
  }) = _ClubInfoState;

  factory ClubInfoState.initial() => ClubInfoState(
        status: CubitStatus.initial,
        club: none(),
        currencyParams: none(),
      );
}
