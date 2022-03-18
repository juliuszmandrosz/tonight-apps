part of 'event_overview_bloc.dart';

@freezed
class EventOverviewEvent with _$EventOverviewEvent {
  const factory EventOverviewEvent.eventsFetched(
    EventFilters filters,
    SortModel sortModel,
  ) = _EventsFetched;

  const factory EventOverviewEvent.nextEventsPageFetched() =
      _NextEventsPageFetched;
}
