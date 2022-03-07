part of 'ticket_cubit.dart';

@freezed
class TicketState with _$TicketState {
  TicketState._();

  factory TicketState({
    required List<Ticket> tickets,
    required bool hasReachedMax,
    required CubitStatus status,
  }) = _TicketState;

  factory TicketState.initial() => TicketState(
        hasReachedMax: false,
        status: CubitStatus.initial,
        tickets: [],
      );
}
