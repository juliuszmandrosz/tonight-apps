import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';

part 'ticket_list_cubit.freezed.dart';
part 'ticket_list_state.dart';

class TicketListCubit extends Cubit<TicketListState> {
  final pageSize = 5;
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
        state.copyWith(status: CubitStatus.success, upcomingTickets: tickets),
      ),
    );
  }

  Future<void> getPastTickets() async {
    final failureOrSuccess = await _ticketFacade.getPastUserTickets(
      pageSize: pageSize,
    );

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (tickets) => emit(
        state.copyWith(
          status: CubitStatus.success,
          pastTickets: tickets,
          hasReachedMax: tickets.length != pageSize,
        ),
      ),
    );
  }

  Future<void> fetchNextPagePastTickets() async {
    Logger().i(state.hasReachedMax);
    if (state.hasReachedMax) return;

    final failureOrSuccess = await _ticketFacade.getPastUserTickets(
      lastTicket: state.pastTickets.last,
      pageSize: pageSize,
    );

    Logger().i(failureOrSuccess);

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(status: CubitStatus.failure),
      ),
      (tickets) => emit(
        state.copyWith(
          status: CubitStatus.success,
          pastTickets: List.of(state.pastTickets)..addAll(tickets),
          hasReachedMax: tickets.length != pageSize,
        ),
      ),
    );
  }

  addUpcomingTicketToState(Ticket ticket) {
    final ticketsCopy = [...state.upcomingTickets];
    ticketsCopy.add(ticket);
    _sortTicketsByStartDate(ticketsCopy);
    emit(state.copyWith(upcomingTickets: ticketsCopy));
  }

  updateUpcomingTicketInState(Ticket oldTicket, Ticket updatedTicket) {
    final ticketsCopy = [...state.upcomingTickets];
    final index = ticketsCopy.indexOf(oldTicket);
    ticketsCopy[index] = updatedTicket;
    emit(state.copyWith(upcomingTickets: ticketsCopy));
  }

  _sortTicketsByStartDate(List<Ticket> tickets) {
    tickets.sort((a, b) {
      final firstDate = a.eventStartDateTime;
      final secondDate = b.eventStartDateTime;

      return firstDate.compareTo(secondDate);
    });
  }
}
