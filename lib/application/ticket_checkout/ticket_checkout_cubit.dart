import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
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

part 'ticket_checkout_cubit.freezed.dart';
part 'ticket_checkout_state.dart';

class TicketCheckoutCubit extends Cubit<TicketCheckoutState> {
  final UserPaymentFacade _paymentFacade;
  final TicketListCubit _ticketListCubit;
  final EventTicketsCubit _eventTicketsCubit;
  late final StreamSubscription _eventTicketsSubscription;
  StreamSubscription? _userTicketsSubscription;

  TicketCheckoutCubit({
    required UserPaymentFacade paymentFacade,
    required TicketListCubit ticketListCubit,
    required EventTicketsCubit eventTicketsCubit,
  })  : _paymentFacade = paymentFacade,
        _ticketListCubit = ticketListCubit,
        _eventTicketsCubit = eventTicketsCubit,
        super(TicketCheckoutState.initial());

  Future<void> initData(Event event) async {
    emit(
      state.copyWith(
        initialStatus: CubitStatus.loading,
        event: some(event),
      ),
    );

    await _initInvoiceData();

    if (state.initialStatus.isFailure()) return;

    _initEventTickets(event);
  }

  Future<void> proceedToPayForTicket() async {
    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final event = state.event.getOrCrash();

    _waitForTicketToBeCreated();

    final failureOrSuccess = await _paymentFacade.proceedToPayForTicket(
      currency: event.currency,
      eventId: event.id,
      promotionCode: state.promotionCode.code,
      isVip: state.isVip,
      sendInvoice: state.sendInvoice,
    );

    failureOrSuccess.fold(
      (failure) => _emitProceedingToPaymentFailure(failure),
      (success) => {},
    );
  }

  void getPromotionCode() async {
    emit(
      state.copyWith(
        promotionCodeStatus: CubitStatus.loading,
      ),
    );

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
            ticketPrice: some(state.ticketPrice.getOrCrash() - code.amountOff),
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
        ticketPrice: some(
          state.ticketPrice.getOrCrash() + state.promotionCode.amountOff,
        ),
        promotionCode: PromotionCode.empty(),
        promotionCodeStatus: CubitStatus.initial,
        invalidPromotionCodeMessage: none(),
      ),
    );
  }

  void sendInvoiceChanged(bool value) {
    emit(state.copyWith(sendInvoice: value));
  }

  void invoiceDataChanged(InvoiceData data) {
    emit(state.copyWith(invoiceData: some(data)));
  }

  void isVipChanged(bool value) {
    final currentPool = state.eventTickets.getOrCrash().getCurrentPool();

    if (!currentPool.isVipEnabled) return;

    final vipPrice = currentPool.vipPrice;

    final currentPrice = state.ticketPrice.getOrCrash();

    final newPrice =
        value ? currentPrice + vipPrice! : currentPrice - vipPrice!;

    emit(
      state.copyWith(
        isVip: value,
        ticketPrice: some(newPrice),
      ),
    );
  }

  Future<void> _initInvoiceData() async {
    final failureOrSuccess = await _paymentFacade.getInvoiceData();

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(initialStatus: CubitStatus.failure)),
      (invoiceData) => emit(state.copyWith(invoiceData: some(invoiceData))),
    );
  }

  _initEventTickets(Event event) {
    _eventTicketsCubit.getEventTickets(clubId: event.clubId, eventId: event.id);

    _eventTicketsSubscription =
        _eventTicketsCubit.stream.listen((eventTicketsState) {
      if (eventTicketsState.status == CubitStatus.failure) {
        emit(state.copyWith(initialStatus: CubitStatus.failure));
      }
      if (eventTicketsState.status != CubitStatus.success) return;

      final eventTickets = eventTicketsState.eventTickets.getOrCrash();

      final currentTicketPool = eventTickets.getCurrentPool();

      if (state.eventTickets.isSome()) {
        final poolInState = state.eventTickets.getOrCrash().getCurrentPool();

        if (poolInState.poolNumber < currentTicketPool.poolNumber) {
          _showSnackbarMessage(S().ticketPoolHasSoldOut);
        }

        if (poolInState.poolNumber > currentTicketPool.poolNumber ||
            poolInState.isSoldOut && !currentTicketPool.isSoldOut) {
          _showSnackbarMessage(S().previousTicketPoolAvailable);
        }

        // TODO - add translation
        if (poolInState.isVipEnabled && !currentTicketPool.isVipEnabled) {
          _showSnackbarMessage('VIP nie jest już dostępny!');
        }

        if (!poolInState.isVipEnabled && currentTicketPool.isVipEnabled) {
          _showSnackbarMessage('VIP znowu jest dostępny!');
        }
      }

      var ticketPrice = currentTicketPool.ticketPrice;

      final vipPrice =
          currentTicketPool.isVipEnabled ? currentTicketPool.vipPrice! : 0;

      var isVip = state.isVip;

      if (isVip) {
        ticketPrice += vipPrice;
        isVip = currentTicketPool.isVipEnabled;
      }

      emit(
        state.copyWith(
          ticketPrice: some(ticketPrice - state.promotionCode.amountOff),
          eventTickets: some(eventTickets),
          initialStatus: CubitStatus.success,
          isVip: isVip,
        ),
      );
    });
  }

  Future<void> _waitForTicketToBeCreated() async {
    final eventId = state.event.getOrCrash().id;

    _userTicketsSubscription = _ticketListCubit.stream.listen(
      (ticketListState) {
        if (ticketListState.status == CubitStatus.failure) {
          _showSnackbarMessage(S().serverError);
          return;
        }

        final createdTicket =
            ticketListState.upcomingLiveTickets.firstWhereOrNull(
          (ticket) => ticket.eventId == eventId && !ticket.isReturned,
        );

        if (createdTicket != null) {
          _emitTicketCreated(createdTicket);
          _userTicketsSubscription?.cancel();
        }
      },
    );
  }

  _emitTicketCreated(Ticket ticket) {
    emit(
      state.copyWith(
        proceedingToPaymentStatus: CubitStatus.success,
        purchasedTicket: some(ticket),
      ),
    );
  }

  _showSnackbarMessage(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));

    emit(state.copyWith(
      snackbarMessage: none(),
      proceedingToPaymentStatus: CubitStatus.failure,
    ));
  }

  _emitProceedingToPaymentFailure(UserPaymentFailure failure) {
    _userTicketsSubscription?.cancel();

    final message = getPaymentFailureMessage(failure);

    if (message.isNotEmpty) {
      emit(state.copyWith(snackbarMessage: some(message)));
    }

    emit(
      state.copyWith(
        snackbarMessage: none(),
        proceedingToPaymentStatus: CubitStatus.failure,
      ),
    );
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
