part of 'activate_ticket_cubit.dart';

@freezed
class ActivateTicketState with _$ActivateTicketState {
  const factory ActivateTicketState({
    required CubitStatus getTicketStatus,
    required CubitStatus activateTicketStatus,
    required CubitStatus receiveTicketStatus,
    required Option<Ticket> ticket,
    required Option<String> snackbarMessage,
    required Option<UserTicketFailure> failure,
  }) = _ActivateTicketState;

  factory ActivateTicketState.initial() => ActivateTicketState(
        getTicketStatus: CubitStatus.initial,
        activateTicketStatus: CubitStatus.initial,
        receiveTicketStatus: CubitStatus.initial,
        ticket: none(),
        snackbarMessage: none(),
        failure: none(),
      );
}
