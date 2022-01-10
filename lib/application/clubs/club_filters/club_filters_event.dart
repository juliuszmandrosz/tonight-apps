part of 'club_filters_bloc.dart';

@freezed
abstract class ClubFiltersEvent with _$ClubFiltersEvent {
  const ClubFiltersEvent._();

  const factory ClubFiltersEvent.onSearchFieldUpdated(String value) =
      OnSearchFieldUpdated;

  const factory ClubFiltersEvent.onFilterDetailsUpdated(
      ClubFilterSettings clubFilterSettings) = OnFilterDetailsUpdated;
}
