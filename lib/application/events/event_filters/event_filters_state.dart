part of 'event_filters_cubit.dart';

@freezed
class EventFiltersState with _$EventFiltersState {
  const EventFiltersState._();

  const factory EventFiltersState.initial() = _EventFiltersInitial;

  const factory EventFiltersState.filtersUpdated(EventFilter eventFilter) =
      _EventFiltersUpdated;
}
