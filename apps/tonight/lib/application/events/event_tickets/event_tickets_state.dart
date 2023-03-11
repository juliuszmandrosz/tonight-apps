part of 'event_tickets_cubit.dart';

@freezed
class EventTicketsState with _$EventTicketsState {
  const EventTicketsState._();

  factory EventTicketsState({
    required Option<EventTickets> eventTickets,
    required Option<Event> event,
    required CubitStatus status,
  }) = _EventTicketsState;

  factory EventTicketsState.initial() => EventTicketsState(
        eventTickets: none(),
        event: none(),
        status: CubitStatus.initial,
      );
}
