part of 'ticket_list_cubit.dart';


@freezed
class TicketListState with _$TicketListState {
  TicketListState._();

  factory TicketListState({
    required List<Ticket> tickets,
    required bool hasReachedMax,
    required CubitStatus status,
  }) = _TicketListState;

  factory TicketListState.initial() => TicketListState(
    hasReachedMax: false,
        status: CubitStatus.initial,
        tickets: [],
      );
}
