part of 'clubs_overview_bloc.dart';

@freezed
abstract class ClubsOverviewEvent with _$ClubsOverviewEvent {
  const factory ClubsOverviewEvent.onClubPageOpened(ClubFilter clubFilter) =
      OnClubPageOpened;

  const factory ClubsOverviewEvent.onFilterUpdated(ClubFilter clubFilter) =
      OnFilterUpdated;

  const factory ClubsOverviewEvent.clubsReceived(
      Either<ClubFailure, List<ClubOverview>> failureOrClubs) = ClubsReceived;
}
