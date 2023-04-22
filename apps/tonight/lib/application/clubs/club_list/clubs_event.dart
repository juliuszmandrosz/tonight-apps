part of 'clubs_bloc.dart';

@freezed
class ClubsEvent with _$ClubsEvent {
  const factory ClubsEvent.clubsFetched(Option<LatLng> userLocation) =
      _ClubsFetched;

  const factory ClubsEvent.phraseFilterApplied(String phrase) =
      _PhraseFilterApplied;

  const factory ClubsEvent.cityFilterApplied(CityFilter filter) =
      _CityFilterApplied;

  const factory ClubsEvent.clubsRefreshed() = _ClubsRefreshed;

  const factory ClubsEvent.nextPageClubsFetched() = _NextPageClubsFetched;
}
