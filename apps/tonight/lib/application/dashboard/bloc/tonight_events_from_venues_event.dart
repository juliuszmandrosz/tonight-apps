part of 'tonight_events_from_venues_bloc.dart';

@freezed
class TonightEventsFromVenuesEvent with _$TonightEventsFromVenuesEvent {
  const factory TonightEventsFromVenuesEvent.eventsFetched(
    Option<LatLng> userLocation,
  ) = _EventsFetched;

  const factory TonightEventsFromVenuesEvent.nextPageEventsFetched() =
      _NextPageEventsFetched;

  const factory TonightEventsFromVenuesEvent.menuFiltersApplied({
    required EventFilters filters,
    required Map<MenuEventFilter, IFilter> appliedFilters,
  }) = _MenuFiltersApplied;

  const factory TonightEventsFromVenuesEvent.menuFilterRemoved(
      MenuEventFilter filter) = _MenuFilterRemoved;

  const factory TonightEventsFromVenuesEvent.eventsRefreshed() =
      _EventsRefreshed;

  const factory TonightEventsFromVenuesEvent.eventVoucherUsed(
    EventVoucher voucher,
  ) = _EventVoucherUsed;
}
