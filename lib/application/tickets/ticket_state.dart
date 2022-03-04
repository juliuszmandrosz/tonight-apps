part of 'ticket_cubit.dart';

@freezed
class TicketState with _$TicketState {
  const factory TicketState.initial() = _Initial;

  const factory TicketState.loadInProgress() = _LoadInProgress;

  const factory TicketState.loadSuccess(List<Ticket> tickets) = _LoadSuccess;

  const factory TicketState.loadFailure(TicketFailure ticketFailure) =
      _LoadFailure;
}
