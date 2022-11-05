part of 'club_filters_cubit.dart';

@freezed
abstract class ClubFiltersState with _$ClubFiltersState {
  const ClubFiltersState._();

  factory ClubFiltersState({
    required ClubFilters filters,
    required bool isFilterApplied,
    required bool isMenuFilterApplied,
  }) = _ClubFiltersState;

  factory ClubFiltersState.initial() => ClubFiltersState(
        filters: ClubFilters.empty(),
        isFilterApplied: false,
        isMenuFilterApplied: false,
      );
}
