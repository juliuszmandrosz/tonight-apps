import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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

  TicketCubit(this._ticketFacade) : super(const TicketState.initial());

  Future<void> getTickets() async {
    emit(const TicketState.loadInProgress());

    _ticketsSubscription = _ticketFacade.getTickets().listen((result) {
      result.fold(
          (failure) => emit(
                TicketState.loadFailure(failure),
              ),
          (tickets) => {
                emit(
                  TicketState.loadSuccess(tickets),
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
