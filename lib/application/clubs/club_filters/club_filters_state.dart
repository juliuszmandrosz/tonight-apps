part of 'club_filters_cubit.dart';

@freezed
abstract class ClubFiltersState with _$ClubFiltersState {
  const ClubFiltersState._();

  const factory ClubFiltersState.initial() = _ClubFiltersInitial;

  const factory ClubFiltersState.filtersUpdated(ClubFilter clubFilter) =
      _ClubFiltersUpdated;
}
