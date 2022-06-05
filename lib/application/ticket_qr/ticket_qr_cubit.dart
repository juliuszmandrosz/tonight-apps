import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver_common/application/application.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

part 'ticket_qr_cubit.freezed.dart';
part 'ticket_qr_state.dart';

class TicketQrCubit extends Cubit<TicketQrState> {
  final UserTicketFacade _ticketFacade;
  final TicketListCubit _ticketListCubit;
  final EventTicketsCubit _eventTicketsCubit;
  late final StreamSubscription _eventTicketsSubscription;
  late final StreamSubscription _userTicketsSubscription;

  TicketQrCubit({
    required UserTicketFacade ticketFacade,
    required TicketListCubit ticketListCubit,
    required EventTicketsCubit eventTicketsCubit,
  })  : _ticketFacade = ticketFacade,
        _ticketListCubit = ticketListCubit,
        _eventTicketsCubit = eventTicketsCubit,
        super(TicketQrState.initial());

  void initTicketData(Ticket ticket) {
    emit(
      state.copyWith(
        status: CubitStatus.loading,
        ticket: some(ticket),
      ),
    );

    _initEventTickets(ticket);
    _initUserTicketsSubscription();
  }

  Future<void> returnTicket() async {
    emit(state.copyWith(ticketReturnStatus: CubitStatus.loading));

    final ticket = state.ticket.getOrCrash();

    final failureOrSuccess = await _ticketFacade.returnTicket(
      ticket.ticketPaymentId,
      ticket.id,
    );

    await failureOrSuccess.fold(
      (failure) => _emitTicketFailure(failure),
      (success) => {},
    );
  }

  Future<void> _initUserTicketsSubscription() async {
    final oldTicket = state.ticket.getOrCrash();

    _userTicketsSubscription = _ticketListCubit.stream.listen(
      (ticketListState) {
        if (ticketListState.status == CubitStatus.failure) {
          _emitTicketFailure(const UserTicketFailure.unexpected());
          return;
        }

        final updatedTicket = ticketListState.upcomingLiveTickets
            .firstWhere((ticket) => ticket.id == oldTicket.id);

        if (updatedTicket != state.ticket.getOrCrash()) {
          emit(state.copyWith(ticket: some(updatedTicket)));

          if (updatedTicket.isReturned) {
            emit(state.copyWith(ticketReturnStatus: CubitStatus.success));
          }
        }
      },
    );
  }

  _showSnackbarMessage(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }

  _emitTicketFailure(UserTicketFailure failure) {
    final message = _getFailureMessage(failure);

    if (message.isNotEmpty) {
      emit(state.copyWith(snackbarMessage: some(message)));
    }

    emit(state.copyWith(
      snackbarMessage: none(),
      ticketReturnStatus: CubitStatus.failure,
    ));
  }

  _getFailureMessage(UserTicketFailure failure) {
    return failure.map(
      unexpected: (_) => S().serverError,
      returnTimeIsOver: (_) => S().returnTimeIsOver,
    );
  }

  _initEventTickets(Ticket ticket) {
    _eventTicketsCubit.getEventTickets(
      clubId: ticket.clubId,
      eventId: ticket.eventId,
    );

    _eventTicketsSubscription = _eventTicketsCubit.stream.listen(
      (eventTicketsState) {
        if (eventTicketsState.status == CubitStatus.failure) {
          emit(state.copyWith(status: CubitStatus.failure));
        }
        if (eventTicketsState.status == CubitStatus.success) {
          final eventTickets = eventTicketsState.eventTickets.getOrCrash();

          final currentTicketPool = eventTickets.getCurrentPool();

          final isVipEnabled = currentTicketPool.isVipEnabled;

          if (state.isInitialized) {
            // TODO - add translation
            if (state.isVipEnabled && !currentTicketPool.isVipEnabled) {
              _showSnackbarMessage('VIP nie jest już dostępny!');
            }

            if (!state.isVipEnabled && currentTicketPool.isVipEnabled) {
              _showSnackbarMessage('VIP znowu jest dostępny!');
            }
          }

          emit(
            state.copyWith(
              isVipEnabled: isVipEnabled,
              isInitialized: true,
            ),
          );
        }
      },
    );
  }

  @override
  Future<void> close() {
    _eventTicketsSubscription.cancel();
    _userTicketsSubscription.cancel();
    return super.close();
  }
}
