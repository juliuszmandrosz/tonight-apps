part of 'event_overview_bloc.dart';

@freezed
class EventOverviewEvent with _$EventOverviewEvent {
  const factory EventOverviewEvent.eventsFetched(EventFilters filters) =
      _EventsFetched;

  const factory EventOverviewEvent.nextEventsPageFetched() =
      _NextEventsPageFetched;
}
