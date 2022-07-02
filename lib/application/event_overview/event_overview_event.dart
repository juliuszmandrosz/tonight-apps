part of 'event_overview_bloc.dart';

@freezed
class EventOverviewEvent with _$EventOverviewEvent {
  const factory EventOverviewEvent.eventsFetched(
    EventFilters filters,
    EventSortModel sortModel,
  ) = _EventsFetched;

  const factory EventOverviewEvent.nextEventsPageFetched() =
      _NextEventsPageFetched;

  const factory EventOverviewEvent.eventToStateAdded(Event event) =
      _EventToStateAdded;

  const factory EventOverviewEvent.eventInStateUpdated(
    Event oldEvent,
    Event updatedEvent,
  ) = _EventInStateUpdated;

  const factory EventOverviewEvent.eventInStateDeleted(
    Event event,
  ) = _EventInStateDeleted;
}
