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
    if (state.hasReachedMax) return;

    final failureOrSuccess = await _ticketFacade.getPastUserTickets(
      lastTicket: state.pastTickets.last,
      pageSize: pageSize,
    );

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

  Future<void> _getUpcomingLiveTickets() async {
    emit(state.copyWith(status: CubitStatus.loading));

    _upcomingLiveTicketsSubscription =
        _ticketFacade.getUpcomingAndLiveUserTickets().listen(
      (result) {
        result.fold(
          (failure) => emit(
            state.copyWith(status: CubitStatus.failure),
          ),
          (tickets) => emit(
            state.copyWith(
              status: CubitStatus.success,
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

  @override
  Future<void> close() {
    _upcomingLiveTicketsSubscription?.cancel();
    return super.close();
  }
}
