part of 'tickets_bloc.dart';

@freezed
class TicketsEvent with _$TicketsEvent {
  const factory TicketsEvent.ticketsFetched() = _TicketsFetched;

  const factory TicketsEvent.nextPageTicketsFetched() = _NextPageTicketsFetched;
}
