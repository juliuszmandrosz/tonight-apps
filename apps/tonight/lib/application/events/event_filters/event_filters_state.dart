part of 'event_filters_cubit.dart';

@freezed
class EventFiltersState with _$EventFiltersState {
  const EventFiltersState._();

  factory EventFiltersState({
    required EventFilters filters,
    required bool isFilterApplied,
    required bool isMenuFilterApplied,
    required bool isDateFilterApplied,
    required Option<String> snackbarMessage,
  }) = _EventFiltersState;

  factory EventFiltersState.initial() => EventFiltersState(
        filters: EventFilters.empty(),
        isFilterApplied: false,
        isMenuFilterApplied: false,
        isDateFilterApplied: false,
        snackbarMessage: none(),
      );
}
