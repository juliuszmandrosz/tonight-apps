import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/core/get_payment_failure_message.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_payments/domain/facades/user_payment_facade.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

part 'vip_checkout_cubit.freezed.dart';
part 'vip_checkout_state.dart';

class VipCheckoutCubit extends Cubit<VipCheckoutState> {
  final UserPaymentFacade _paymentFacade;
  final TicketListCubit _ticketListCubit;
  final EventTicketsCubit _eventTicketsCubit;
  late final StreamSubscription _eventTicketsSubscription;
  StreamSubscription? _userTicketsSubscription;

  VipCheckoutCubit({
    required UserPaymentFacade paymentFacade,
    required TicketListCubit ticketListCubit,
    required EventTicketsCubit eventTicketsCubit,
  })  : _paymentFacade = paymentFacade,
        _ticketListCubit = ticketListCubit,
        _eventTicketsCubit = eventTicketsCubit,
        super(VipCheckoutState.initial());

  void initData(Ticket ticket) async {
    emit(
      state.copyWith(
        initialStatus: CubitStatus.loading,
        ticket: some(ticket),
      ),
    );

    _initEventTickets(ticket);
  }

  void proceedToPayForVip() async {
    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final ticketInitData = state.ticket.getOrCrash();

    _waitForTicketToBeUpdated();

    final failureOrSuccess = await _paymentFacade.proceedToPayForVip(
      ticketId: ticketInitData.id,
      currency: ticketInitData.currency,
    );

    await failureOrSuccess.fold(
      (failure) => _emitProceedingToPaymentFailure(failure),
      (success) => {},
    );
  }

  void getPromotionCode() async {
    emit(state.copyWith(
      promotionCodeStatus: CubitStatus.loading,
    ));

    final failureOrSuccess = await _paymentFacade
        .getPromotionCode(state.promotionCode.code.toUpperCase());

    failureOrSuccess.fold(
      (failure) => _emitPromotionCodeFailure(failure),
      (code) {
        emit(
          state.copyWith(
            promotionCode: code,
            promotionCodeStatus: CubitStatus.success,
            invalidPromotionCodeMessage: none(),
            vipPrice: some(state.vipPrice.getOrCrash() - code.amountOff),
          ),
        );
      },
    );
  }

  void promotionCodeChanged(String value) {
    final promotionCode = state.promotionCode.copyWith(code: value);
    emit(state.copyWith(
      promotionCode: promotionCode,
      invalidPromotionCodeMessage: none(),
    ));
  }

  void resetPromotionCode() {
    emit(
      state.copyWith(
        vipPrice: some(
          state.vipPrice.getOrCrash() + state.promotionCode.amountOff,
        ),
        promotionCode: PromotionCode.empty(),
        promotionCodeStatus: CubitStatus.initial,
        invalidPromotionCodeMessage: none(),
      ),
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
          emit(state.copyWith(initialStatus: CubitStatus.failure));
        }

        if (eventTicketsState.status == CubitStatus.success) {
          final eventTickets = eventTicketsState.eventTickets.getOrCrash();

          final currentTicketPool = eventTickets.getCurrentPool();

          if (!currentTicketPool.isVipEnabled) {
            // TODO - add translation
            emit(state.copyWith(isVipNoLongerAvailable: true));
            _showSnackbarMessage('VIP nie jest już dostępny!');
            return;
          }

          final vipPrice = currentTicketPool.vipPrice;

          emit(
            state.copyWith(
              eventTickets: some(eventTickets),
              vipPrice: some(vipPrice!),
              initialStatus: CubitStatus.success,
            ),
          );
        }
      },
    );
  }

  Future<void> _waitForTicketToBeUpdated() async {
    final oldTicket = state.ticket.getOrCrash();

    _userTicketsSubscription = _ticketListCubit.stream.listen(
      (ticketListState) {
        if (ticketListState.status == CubitStatus.failure) {
          _showSnackbarMessage(S().serverError);
          return;
        }

        final updatedTicket = ticketListState.upcomingLiveTickets.firstWhere(
          (ticket) => ticket.eventId == oldTicket.eventId && !ticket.isReturned,
        );

        if (updatedTicket != state.ticket.getOrCrash()) {
          _emitTicketUpdated(updatedTicket);
          _userTicketsSubscription?.cancel();
        }
      },
    );
  }

  _emitTicketUpdated(Ticket ticket) {
    emit(
      state.copyWith(
        proceedingToPaymentStatus: CubitStatus.success,
        upgradedTicket: some(ticket),
      ),
    );
  }

  _showSnackbarMessage(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));

    emit(
      state.copyWith(
        snackbarMessage: none(),
        proceedingToPaymentStatus: CubitStatus.failure,
      ),
    );
  }

  _emitProceedingToPaymentFailure(UserPaymentFailure failure) {
    _userTicketsSubscription?.cancel();

    final message = getPaymentFailureMessage(failure);

    if (message.isNotEmpty) {
      emit(state.copyWith(snackbarMessage: some(message)));
    }

    emit(state.copyWith(
      snackbarMessage: none(),
      proceedingToPaymentStatus: CubitStatus.failure,
    ));
  }

  _emitPromotionCodeFailure(UserPaymentFailure failure) {
    final message = getPaymentFailureMessage(failure);

    message == S().serverError
        ? emit(state.copyWith(snackbarMessage: some(message)))
        : emit(state.copyWith(invalidPromotionCodeMessage: some(message)));

    emit(
      state.copyWith(
        promotionCodeStatus: CubitStatus.failure,
        snackbarMessage: none(),
      ),
    );
  }

  @override
  Future<void> close() {
    _eventTicketsSubscription.cancel();
    _userTicketsSubscription?.cancel();
    return super.close();
  }
}
