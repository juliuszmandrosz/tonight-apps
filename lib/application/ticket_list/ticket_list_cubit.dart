import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';

part 'ticket_list_cubit.freezed.dart';
part 'ticket_list_state.dart';

class TicketListCubit extends Cubit<TicketListState> {
  final UserTicketFacade _ticketFacade;

  TicketListCubit(this._ticketFacade) : super(TicketListState.initial());

  Future<void> getUpcomingTickets() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _ticketFacade.getUpcomingUserTickets();

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(status: CubitStatus.failure),
      ),
      (tickets) => emit(
        state.copyWith(status: CubitStatus.success, tickets: tickets),
      ),
    );
  }

  addTicketToState(Ticket ticket) {
    final ticketsCopy = [...state.tickets];
    ticketsCopy.add(ticket);
    _sortTicketsByStartDate(ticketsCopy);
    emit(state.copyWith(tickets: ticketsCopy));
  }

  updateTicketInState(Ticket oldTicket, Ticket updatedTicket) {
    final ticketsCopy = [...state.tickets];
    final index = ticketsCopy.indexOf(oldTicket);
    ticketsCopy[index] = updatedTicket;
    emit(state.copyWith(tickets: ticketsCopy));
  }

  _sortTicketsByStartDate(List<Ticket> tickets) {
    tickets.sort((a, b) {
      final firstDate = a.eventStartDateTime;
      final secondDate = b.eventStartDateTime;

      return firstDate.compareTo(secondDate);
    });
  }
}
