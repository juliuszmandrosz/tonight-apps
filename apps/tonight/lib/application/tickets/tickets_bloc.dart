import 'dart:async';

import 'package:common/application/bloc_throttle_debounce.dart';
import 'package:common/application/cubit_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tickets/domain/ticket_entity.dart';
import 'package:tickets/domain/user_ticket_facade.dart';

part 'tickets_bloc.freezed.dart';
part 'tickets_event.dart';
part 'tickets_state.dart';

const _pageSize = 20;

class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  final UserTicketFacade _userTicketFacade;

  TicketsBloc(this._userTicketFacade) : super(TicketsState.initial()) {
    on<_TicketsFetched>(_onTicketsFetched);
    on<_NextPageTicketsFetched>(
      _onNextPageTicketsFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onTicketsFetched(
    _TicketsFetched event,
    Emitter<TicketsState> emit,
  ) async {
    emit(state.copyWith(fetchTicketsStatus: CubitStatus.loading));
    final result = await _userTicketFacade.getUserTickets(pageSize: _pageSize);
    result.fold(
      (_) => emit(state.copyWith(fetchTicketsStatus: CubitStatus.failure)),
      (tickets) => emit(
        state.copyWith(
          fetchTicketsStatus: CubitStatus.success,
          tickets: tickets,
          hasReachedMax: tickets.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageTicketsFetched(
    _NextPageTicketsFetched event,
    Emitter<TicketsState> emit,
  ) async {
    if (state.hasReachedMax || state.tickets.isEmpty) return;
    emit(state.copyWith(nextPageStatus: CubitStatus.loading));
    final result = await _userTicketFacade.getUserTickets(
      pageSize: _pageSize,
      lastTicket: state.tickets.last,
    );
    result.fold(
      (_) => emit(state.copyWith(nextPageStatus: CubitStatus.failure)),
      (tickets) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          tickets: [...state.tickets, ...tickets],
          hasReachedMax: tickets.length < _pageSize,
        ),
      ),
    );
  }
}
