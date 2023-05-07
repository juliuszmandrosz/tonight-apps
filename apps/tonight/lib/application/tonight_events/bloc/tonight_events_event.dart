part of 'tonight_events_bloc.dart';

@freezed
class TonightEventsEvent with _$TonightEventsEvent {
  const factory TonightEventsEvent.eventsFetched(Option<LatLng> userLocation) =
      _EventsFetched;

  const factory TonightEventsEvent.nextPageEventsFetched() =
      _NextPageEventsFetched;

  const factory TonightEventsEvent.menuFiltersApplied({
    required EventFilters filters,
    required Map<MenuEventFilter, IFilter> appliedFilters,
  }) = _MenuFiltersApplied;

  const factory TonightEventsEvent.menuFilterRemoved(MenuEventFilter filter) =
      _MenuFilterRemoved;

  const factory TonightEventsEvent.eventsRefreshed() = _EventsRefreshed;
}
