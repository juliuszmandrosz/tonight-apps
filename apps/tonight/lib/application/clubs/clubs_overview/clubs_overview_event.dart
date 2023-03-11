part of 'clubs_overview_bloc.dart';

@freezed
class ClubsOverviewEvent with _$ClubsOverviewEvent {
  const factory ClubsOverviewEvent.clubsFetched(ClubFilters clubFilter) =
      _ClubsFetched;

  const factory ClubsOverviewEvent.nextPageClubsFetched() =
      _NextPageClubsFetched;
}
