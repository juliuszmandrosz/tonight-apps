part of 'clubs_bloc.dart';

@freezed
class ClubsEvent with _$ClubsEvent {
  const factory ClubsEvent.clubsFetched({
    required PhraseFilter phraseFilter,
    required Option<LatLng> userLocation,
  }) = _ClubsFetched;

  const factory ClubsEvent.queryChanged(String query) = _QueryChanged;

  const factory ClubsEvent.cityFilterApplied(CityFilter filter) =
      _CityFilterApplied;

  const factory ClubsEvent.clubsRefreshed() = _ClubsRefreshed;

  const factory ClubsEvent.nextPageClubsFetched() = _NextPageClubsFetched;
}
