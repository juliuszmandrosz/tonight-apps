import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  TicketQrCubit({
    required UserTicketFacade ticketFacade,
    required TicketListCubit ticketListCubit,
  })  : _ticketFacade = ticketFacade,
        _ticketListCubit = ticketListCubit,
        super(TicketQrState.initial());

  void initTicketData(Ticket ticket) {
    emit(state.copyWith(ticket: some(ticket)));
  }

  Future<void> returnTicket() async {
    emit(state.copyWith(ticketReturnStatus: CubitStatus.loading));

    final ticket = state.ticket.getOrCrash();

    final failureOrSuccess = await _ticketFacade.returnTicket(
      ticket.ticketPaymentId,
      ticket.id,
    );

    await failureOrSuccess.fold(
      (failure) => _emitTicketReturnFailure(failure),
      (success) async => await _waitForTicketToBeUpdated(),
    );
  }

  Future<void> _waitForTicketToBeUpdated() async {
    final oldTicket = state.ticket.getOrCrash();

    final failureOrSuccess =
        await _ticketFacade.waitForTicketToBeUpdated(oldTicket.eventId);

    failureOrSuccess.fold(
      (failure) => _emitTicketReturnFailure(failure),
      (ticket) {
        _ticketListCubit.updateUpcomingLiveTicketInState(oldTicket, ticket);
        emit(state.copyWith(ticketReturnStatus: CubitStatus.success));
      },
    );
  }

  _emitTicketReturnFailure(UserTicketFailure failure) {
    final message = _getFailureMessage(failure);

    if (message.isNotEmpty) {
      emit(state.copyWith(ticketReturnFailureMessage: some(message)));
    }

    emit(state.copyWith(
      ticketReturnFailureMessage: none(),
      ticketReturnStatus: CubitStatus.failure,
    ));
  }

  _getFailureMessage(UserTicketFailure failure) {
    return failure.map(
      unexpected: (_) => S().serverError,
      returnTimeIsOver: (_) => S().returnTimeIsOver,
    );
  }
}
