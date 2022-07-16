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
  final CurrencyParamsFacade _currencyParamsFacade;
  StreamSubscription? _eventTicketsSubscription;
  StreamSubscription? _userTicketsSubscription;

  TicketCheckoutCubit({
    required UserPaymentFacade paymentFacade,
    required TicketListCubit ticketListCubit,
    required EventTicketsCubit eventTicketsCubit,
    required CurrencyParamsFacade currencyParamsFacade,
  })  : _paymentFacade = paymentFacade,
        _ticketListCubit = ticketListCubit,
        _eventTicketsCubit = eventTicketsCubit,
        _currencyParamsFacade = currencyParamsFacade,
        super(TicketCheckoutState.initial());

  Future<void> initData(Event event) async {
    emit(
      state.copyWith(
        initialStatus: CubitStatus.loading,
        event: some(event),
      ),
    );

    await _initServiceFee();

    await _initCurrencyParams();

    if (state.initialStatus.isFailure()) return;

    await _initInvoiceData();

    if (state.initialStatus.isFailure()) return;

    _initEventTickets(event);
  }

  Future<void> proceedToPayForTicket() async {
    if (state.sendInvoice && !_validateInvoiceData()) return;

    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final event = state.event.getOrCrash();

    _waitForTicketToBeCreated();

    final promotionCode =
        state.promotionCode.code.isNotEmpty && state.promotionCode.isValid
            ? state.promotionCode.code
            : null;

    final failureOrSuccess = await _paymentFacade.proceedToPayForTicket(
      currency: event.currency,
      eventId: event.id,
      promotionCode: promotionCode,
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
        final newTicketPrice = state.ticketPrice.getOrCrash() - code.amountOff;
        final serviceFeeAmount = _getServiceFeeAmount(newTicketPrice);
        final totalAmount = _getTotalAmount(newTicketPrice, serviceFeeAmount);
        emit(
          state.copyWith(
            promotionCode: code,
            promotionCodeStatus: CubitStatus.success,
            invalidPromotionCodeMessage: none(),
            ticketPrice: some(newTicketPrice),
            serviceFeeAmount: some(serviceFeeAmount),
            totalAmount: some(totalAmount),
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
    final newTicketPrice =
        state.ticketPrice.getOrCrash() + state.promotionCode.amountOff;

    final serviceFeeAmount = _getServiceFeeAmount(newTicketPrice);
    final totalAmount = _getTotalAmount(newTicketPrice, serviceFeeAmount);

    emit(
      state.copyWith(
        ticketPrice: some(newTicketPrice),
        serviceFeeAmount: some(serviceFeeAmount),
        totalAmount: some(totalAmount),
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

    final newTicketPrice =
        value ? currentPrice + vipPrice! : currentPrice - vipPrice!;

    final serviceFeeAmount = _getServiceFeeAmount(newTicketPrice);
    final totalAmount = _getTotalAmount(newTicketPrice, serviceFeeAmount);

    emit(
      state.copyWith(
        isVip: value,
        ticketPrice: some(newTicketPrice),
        serviceFeeAmount: some(serviceFeeAmount),
        totalAmount: some(totalAmount),
      ),
    );
  }

  Future<void> _initCurrencyParams() async {
    final currency = state.event.getOrCrash().currency;

    final failureOrSuccess =
        await _currencyParamsFacade.getCurrencyParams(currency);

    failureOrSuccess.fold(
        (failure) => emit(state.copyWith(initialStatus: CubitStatus.failure)),
        (params) => emit(state.copyWith(currencyParams: some(params))));
  }

  Future<void> _initServiceFee() async {
    final failureOrSuccess = await _paymentFacade.getServiceFee();
    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(initialStatus: CubitStatus.failure)),
      (fee) => emit(state.copyWith(serviceFee: some(fee))),
    );
  }

  bool _validateInvoiceData() {
    final invoiceData = state.invoiceData.getOrCrash();
    final hasName = invoiceData.name != null && invoiceData.name!.isNotEmpty;
    if (!hasName) {
      _showSnackbarMessage(S().enterInvoiceData);
      return false;
    }

    return true;
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

      final currentPool = eventTickets.getCurrentPool();

      if (state.eventTickets.isSome()) {
        _emitMessagesIfPoolsHaveChanged(currentPool);
      }

      var isVip = state.isVip;

      if (isVip) {
        isVip = currentPool.isVipEnabled;
      }

      final newTicketPrice = _getNewTicketPrice(currentPool, isVip);
      final serviceFeeAmount = _getServiceFeeAmount(newTicketPrice);
      final totalAmount = _getTotalAmount(newTicketPrice, serviceFeeAmount);

      emit(
        state.copyWith(
          ticketPrice: some(newTicketPrice),
          eventTickets: some(eventTickets),
          initialStatus: CubitStatus.success,
          isVip: isVip,
          serviceFeeAmount: some(serviceFeeAmount),
          totalAmount: some(totalAmount),
        ),
      );
    });
  }

  int _getNewTicketPrice(TicketPool currentPool, bool isVip) {
    final currentPoolTicketPrice = currentPool.ticketPrice;

    final vipPrice = isVip ? currentPool.vipPrice! : 0;

    return currentPoolTicketPrice + vipPrice - state.promotionCode.amountOff;
  }

  double _getServiceFeeAmount(int ticketPrice) {
    final serviceFee = state.serviceFee.getOrCrash();
    final serviceFeeAmount = ticketPrice * serviceFee;
    return serviceFeeAmount + _getMinServiceFeeAmount();
  }

  double _getMinServiceFeeAmount() {
    return state.currencyParams.getOrCrash().minServiceFeeAmount;
  }

  double _getTotalAmount(int ticketPrice, double serviceFeeAmount) {
    return ticketPrice + serviceFeeAmount;
  }

  _emitMessagesIfPoolsHaveChanged(TicketPool currentPool) {
    final poolInState = state.eventTickets.getOrCrash().getCurrentPool();

    if (poolInState.poolNumber < currentPool.poolNumber) {
      _showSnackbarMessage(S().ticketPoolHasSoldOut);
      return;
    }

    if (poolInState.poolNumber > currentPool.poolNumber ||
        poolInState.isSoldOut && !currentPool.isSoldOut) {
      _showSnackbarMessage(S().previousTicketPoolAvailable);
      return;
    }

    if (poolInState.isVipEnabled && !currentPool.isVipEnabled) {
      _showSnackbarMessage(S().vipNoLongerAvailable);
      return;
    }

    if (!poolInState.isVipEnabled && currentPool.isVipEnabled) {
      _showSnackbarMessage(S().vipAvailableAgain);
      return;
    }

    if (poolInState.poolNumber == currentPool.poolNumber &&
        poolInState.ticketPrice != currentPool.ticketPrice) {
      _showSnackbarMessage(S().ticketPriceHasChanged);
      return;
    }

    if (poolInState.isVipEnabled == currentPool.isVipEnabled &&
        poolInState.vipPrice != currentPool.vipPrice) {
      _showSnackbarMessage(S().vipPriceHasChanged);
      return;
    }
  }

  Future<void> _waitForTicketToBeCreated() async {
    final eventId = state.event.getOrCrash().id;

    _userTicketsSubscription = _ticketListCubit.stream.listen(
      (ticketListState) {
        if (ticketListState.initialStatus == CubitStatus.failure) {
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
    emit(state.copyWith(snackbarMessage: none()));
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
        paymentFailure: some(failure),
      ),
    );

    emit(state.copyWith(paymentFailure: none()));
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
    _eventTicketsSubscription?.cancel();
    _userTicketsSubscription?.cancel();
    return super.close();
  }
}
