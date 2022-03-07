import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:raver/application/core/cubit_status.dart';
import 'package:raver/domain/tickets/ticket_entity.dart';
import 'package:raver/domain/tickets/ticket_facade.dart';
import 'package:raver/domain/tickets/ticket_failure.dart';

part 'ticket_cubit.freezed.dart';
part 'ticket_state.dart';

@injectable
class TicketCubit extends Cubit<TicketState> {
  final TicketFacade _ticketFacade;

  late StreamSubscription<Either<TicketFailure, List<Ticket>>>
      _ticketsSubscription;

  TicketCubit(this._ticketFacade) : super(TicketState.initial());

  Future<void> getTickets() async {
    emit(state.copyWith(status: CubitStatus.loading));

    _ticketsSubscription = _ticketFacade.getTickets().listen((result) {
      result.fold(
          (failure) => emit(
                state.copyWith(status: CubitStatus.failure),
              ),
          (tickets) => {
                emit(
                  state.copyWith(status: CubitStatus.success, tickets: tickets),
                ),
              });
    });
  }

  @override
  Future<void> close() {
    _ticketsSubscription.cancel();
    return super.close();
  }
}
