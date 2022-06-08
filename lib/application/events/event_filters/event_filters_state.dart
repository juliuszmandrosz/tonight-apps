part of 'event_filters_cubit.dart';

@freezed
class EventFiltersState with _$EventFiltersState {
  const EventFiltersState._();

  factory EventFiltersState({
    required EventFilters filters,
    required bool isFilterApplied,
  }) = _EventFiltersState;

  factory EventFiltersState.initial() => EventFiltersState(
        filters: EventFilters.empty(),
        isFilterApplied: false,
      );
}
