import 'dart:async';

import 'package:common/application/cubit_status.dart';
import 'package:common/extensions/option_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tickets/domain/domain.dart';

part 'activate_ticket_cubit.freezed.dart';
part 'activate_ticket_state.dart';

class ActivateTicketCubit extends Cubit<ActivateTicketState> {
  final UserTicketFacade _userTicketFacade;
  StreamSubscription<Either<UserTicketFailure, Ticket>>?
      _ticketStreamSubscription;

  ActivateTicketCubit(this._userTicketFacade)
      : super(ActivateTicketState.initial());

  listenTicketById(String ticketId) {
    emit(state.copyWith(getTicketStatus: CubitStatus.loading));
    _ticketStreamSubscription?.cancel();
    _ticketStreamSubscription =
        _userTicketFacade.listenTicketById(ticketId).listen(
              (result) => result.fold(
                (failure) => emit(
                  state.copyWith(
                    getTicketStatus: CubitStatus.failure,
                    failure: some(failure),
                  ),
                ),
                (ticket) => emit(
                  state.copyWith(
                    getTicketStatus: CubitStatus.success,
                    ticket: some(ticket),
                  ),
                ),
              ),
            );
  }

  Future<void> activateTicket() async {
    emit(state.copyWith(activateTicketStatus: CubitStatus.loading));
    final ticket = state.ticket.getOrCrash();
    final result = await _userTicketFacade.activateTicket(ticket.id);
    result.fold(
      (failure) {
        emit(state.copyWith(activateTicketStatus: CubitStatus.failure));
        _showSnackbar(failure.message);
      },
      (_) => emit(state.copyWith(activateTicketStatus: CubitStatus.success)),
    );
  }

  Future<void> receiveTicket() async {
    emit(state.copyWith(receiveTicketStatus: CubitStatus.loading));
    final ticket = state.ticket.getOrCrash();
    final result = await _userTicketFacade.receiveTicket(
      ticketId: ticket.id,
      clubId: ticket.clubId,
    );
    result.fold(
      (failure) {
        emit(state.copyWith(receiveTicketStatus: CubitStatus.failure));
        _showSnackbar(failure.message);
      },
      (_) => emit(state.copyWith(receiveTicketStatus: CubitStatus.success)),
    );
  }

  _showSnackbar(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }

  @override
  Future<void> close() {
    _ticketStreamSubscription?.cancel();
    return super.close();
  }
}
