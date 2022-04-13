import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';

part 'ticket_list_cubit.freezed.dart';
part 'ticket_list_state.dart';

class TicketListCubit extends Cubit<TicketListState> {
  final TicketFacade _ticketFacade;

  TicketListCubit(this._ticketFacade) : super(TicketListState.initial());

  Future<void> getTickets() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _ticketFacade.getUserTickets();

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(status: CubitStatus.failure),
      ),
      (tickets) => emit(
        state.copyWith(status: CubitStatus.success, tickets: tickets),
      ),
    );
  }

  removeTicketFromState(Ticket ticket) {
    final ticketsCopy = [...state.tickets];
    ticketsCopy.remove(ticket);
    emit(state.copyWith(tickets: ticketsCopy));
  }

  addTicketToState(Ticket ticket) {
    final ticketsCopy = [...state.tickets];
    ticketsCopy.add(ticket);
    emit(state.copyWith(tickets: ticketsCopy));
  }
}
