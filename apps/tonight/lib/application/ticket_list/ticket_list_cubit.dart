import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';

part 'ticket_list_cubit.freezed.dart';
part 'ticket_list_state.dart';

class TicketListCubit extends Cubit<TicketListState> {
  final pageSize = 20;
  final UserTicketFacade _ticketFacade;
  StreamSubscription? _upcomingLiveTicketsSubscription;

  TicketListCubit(this._ticketFacade) : super(TicketListState.initial());

  Future<void> fetchTickets() async {
    await _getUpcomingLiveTickets();
    await _getPastTickets();
  }

  Future<void> fetchNextPagePastTickets() async {
    if (state.hasReachedMax || state.fetchNextPageTicketsStatus.isLoading()) {
      return;
    }

    emit(state.copyWith(fetchNextPageTicketsStatus: CubitStatus.loading));

    final failureOrSuccess = await _ticketFacade.getPastUserTickets(
      lastTicket: state.pastTickets.last,
      pageSize: pageSize,
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          initialStatus: CubitStatus.failure,
          fetchNextPageTicketsStatus: CubitStatus.failure,
        ),
      ),
      (tickets) => emit(
        state.copyWith(
          initialStatus: CubitStatus.success,
          pastTickets: List.of(state.pastTickets)..addAll(tickets),
          hasReachedMax: tickets.length != pageSize,
          fetchNextPageTicketsStatus: CubitStatus.success,
        ),
      ),
    );
  }

  updatePastTicketInState(Ticket oldTicket, Ticket updatedTicket) {
    final ticketsCopy = [...state.pastTickets];
    final index = ticketsCopy.indexOf(oldTicket);
    ticketsCopy[index] = updatedTicket;
    emit(state.copyWith(pastTickets: ticketsCopy));
  }

  Future<void> _getUpcomingLiveTickets() async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    _upcomingLiveTicketsSubscription =
        _ticketFacade.getUpcomingAndLiveUserTickets().listen(
      (result) {
        result.fold(
          (failure) => emit(
            state.copyWith(initialStatus: CubitStatus.failure),
          ),
          (tickets) => emit(
            state.copyWith(
              initialStatus: CubitStatus.success,
              upcomingLiveTickets: tickets,
            ),
          ),
        );
      },
    );
  }

  Future<void> _getPastTickets() async {
    final failureOrSuccess = await _ticketFacade.getPastUserTickets(
      pageSize: pageSize,
    );

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(initialStatus: CubitStatus.failure)),
      (tickets) => emit(
        state.copyWith(
          initialStatus: CubitStatus.success,
          pastTickets: tickets,
          hasReachedMax: tickets.length != pageSize,
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    _upcomingLiveTicketsSubscription?.cancel();
    return super.close();
  }
}
