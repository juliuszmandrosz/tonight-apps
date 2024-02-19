part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.eventsFetched({
    required PhraseFilter phraseFilter,
    required Option<LatLng> userLocation,
  }) = _EventsFetched;

  const factory EventsEvent.queryChanged(String query) = _QueryChanged;

  const factory EventsEvent.menuFiltersApplied({
    required EventFilters filters,
    required Map<MenuEventFilter, IFilter> appliedFilters,
  }) = _MenuFiltersApplied;

  const factory EventsEvent.menuFilterRemoved(MenuEventFilter filter) =
      _MenuFilterRemoved;

  const factory EventsEvent.dateFilterApplied(DateRangeFilter filter) =
      _DateFilterApplied;

  const factory EventsEvent.cityFilterApplied(CityFilter filter) =
      _CityFilterApplied;

  const factory EventsEvent.eventsRefreshed() = _EventsRefreshed;

  const factory EventsEvent.nextPageEventsFetched() = _NextPageEventsFetched;
}
