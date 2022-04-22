import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/tickets/ticket_entity.dart';
import 'package:raver/domain/tickets/ticket_facade.dart';
import 'package:raver_common/raver_common.dart';

part 'ticket_cubit.freezed.dart';
part 'ticket_state.dart';

class TicketCubit extends Cubit<TicketState> {
  final TicketFacade _ticketFacade;

  TicketCubit(this._ticketFacade) : super(TicketState.initial());

  Future<void> getTickets() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _ticketFacade.getTickets();

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(status: CubitStatus.failure),
      ),
      (tickets) => emit(
        state.copyWith(status: CubitStatus.success, tickets: tickets),
      ),
    );
  }
}
