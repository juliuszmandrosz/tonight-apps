part of 'club_filters_bloc.dart';

@freezed
abstract class ClubFiltersState with _$ClubFiltersState {
  const ClubFiltersState._();

  const factory ClubFiltersState.initial() = _ClubFiltersInitial;

  const factory ClubFiltersState.filtersUpdated(ClubFilter clubFilter) =
      _ClubFiltersUpdated;
}
