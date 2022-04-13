part of 'ticket_qr_cubit.dart';

@freezed
class TicketQrState with _$TicketQrState {
  const TicketQrState._();

  factory TicketQrState({
    required CubitStatus ticketReturnStatus,
    required Option<Ticket> ticket,
    required Option<String> ticketReturnFailureMessage,
  }) = _TicketQrState;

  factory TicketQrState.initial() => TicketQrState(
        ticketReturnStatus: CubitStatus.initial,
        ticket: none(),
        ticketReturnFailureMessage: none(),
      );
}
