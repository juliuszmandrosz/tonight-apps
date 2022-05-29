part of 'ticket_list_cubit.dart';

@freezed
class TicketListState with _$TicketListState {
  TicketListState._();

  factory TicketListState({
    required List<Ticket> upcomingLiveTickets,
    required List<Ticket> pastTickets,
    required bool hasReachedMax,
    required CubitStatus status,
  }) = _TicketListState;

  factory TicketListState.initial() => TicketListState(
        upcomingLiveTickets: [],
        pastTickets: [],
        hasReachedMax: false,
        status: CubitStatus.initial,
      );
}
