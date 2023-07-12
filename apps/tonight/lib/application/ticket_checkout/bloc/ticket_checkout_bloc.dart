import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/event_tickets/entities/ticket_pool_entity.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payments/application/core/tonight_payment_method.dart';
import 'package:payments/domain/entities/customer_data_entity.dart';
import 'package:payments/domain/promotion_code_entity.dart';
import 'package:tickets/domain/ticket_entity.dart';
import 'package:tonight/application/ticket_checkout/aggregator/ticket_checkout_aggregator.dart';
import 'package:tonight/application/ticket_checkout/aggregator/ticket_checkout_failure.dart';
import 'package:tonight/application/ticket_checkout/model/ticket_checkout_data_model.dart';
import 'package:translations/translations.dart';

part 'ticket_checkout_bloc.freezed.dart';
part 'ticket_checkout_event.dart';
part 'ticket_checkout_state.dart';

class TicketCheckoutBloc
    extends Bloc<TicketCheckoutEvent, TicketCheckoutState> {
  final TicketCheckoutAggregator _ticketCheckoutAggregator;

  TicketCheckoutBloc(this._ticketCheckoutAggregator)
      : super(TicketCheckoutState.initial()) {
    on<_StateInitialized>(_onStateInitialized);
    on<_ProceededToPayment>(_onProceededToPayment);
    on<_PromotionCodeFetched>(_onPromotionCodeFetched);
    on<_PromotionCodeChanged>(_onPromotionCodeChanged);
    on<_TicketQuantityChanged>(_onTicketQuantityChanged);
    on<_PromotionCodeResetted>(_onPromotionCodeResetted);
    on<_CustomerDataChanged>(_onCustomerDataChanged);
  }

  FutureOr<void> _onStateInitialized(
    _StateInitialized event,
    Emitter<TicketCheckoutState> emit,
  ) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));
    await emit.forEach(
      _ticketCheckoutAggregator.initCheckoutData(event.event),
      onData: (data) => data.fold(
        (_) => state.copyWith(initialStatus: CubitStatus.failure),
        (result) {
          _showMessageIfPoolsHaveChanged(result.currentTicketPool, emit);
          final amounts = _getTotalAndServiceFeeAmount(
            promotionCodeAmountOff: state.promotionCode.amountOff,
            ticketQuantity: state.ticketQuantity,
            ticketPrice: result.currentTicketPool.ticketPrice,
            checkoutData: result,
          );
          return state.copyWith(
            initialStatus: CubitStatus.success,
            ticketCheckoutData: some(result),
            totalAmount: some(amounts.value1),
            serviceFeeAmount: some(amounts.value2),
          );
        },
      ),
    );
  }

  FutureOr<void> _onProceededToPayment(
    _ProceededToPayment event,
    Emitter<TicketCheckoutState> emit,
  ) async {
    final checkoutData = state.ticketCheckoutData.getOrCrash();
    final customerData = checkoutData.customerData;
    if (customerData.email.isNullOrEmpty) {
      _showSnackbarMessage(S().enterEmail, emit);
      return;
    }
    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));
    final promotionCode =
        state.promotionCode.code.isNotEmpty && state.promotionCode.isValid
            ? state.promotionCode.code
            : null;
    final result = await _ticketCheckoutAggregator.proceedToPayForTicket(
      currency: checkoutData.currency,
      eventId: checkoutData.eventId,
      promotionCode: promotionCode,
      paymentMethod: getPaymentMethodFromString(customerData.paymentMethod),
      amount: state.totalAmount.getOrCrash(),
      quantity: state.ticketQuantity,
      customerEmail: customerData.email!,
    );

    result.fold(
      (failure) {
        _showSnackbarMessage(failure.message, emit);
        emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.failure));
      },
      (ticket) => emit(
        state.copyWith(
          purchasedTicket: some(ticket),
          proceedingToPaymentStatus: CubitStatus.success,
        ),
      ),
    );
  }

  FutureOr<void> _onPromotionCodeFetched(
    _PromotionCodeFetched event,
    Emitter<TicketCheckoutState> emit,
  ) async {
    emit(state.copyWith(promotionCodeStatus: CubitStatus.loading));
    final result = await _ticketCheckoutAggregator
        .fetchPromotionCode(state.promotionCode.code);
    result.fold(
      (failure) {
        _showSnackbarMessage(failure.message, emit);
        emit(state.copyWith(promotionCodeStatus: CubitStatus.failure));
      },
      (code) {
        final amounts = _getTotalAndServiceFeeAmount(
          promotionCodeAmountOff: code.amountOff,
          ticketQuantity: state.ticketQuantity,
          ticketPrice: _currentTicketPrice,
        );
        emit(
          state.copyWith(
            promotionCode: code,
            promotionCodeStatus: CubitStatus.success,
            invalidPromotionCodeMessage: none(),
            totalAmount: some(amounts.value1),
            serviceFeeAmount: some(amounts.value2),
          ),
        );
      },
    );
  }

  FutureOr<void> _onPromotionCodeChanged(
    _PromotionCodeChanged event,
    Emitter<TicketCheckoutState> emit,
  ) {
    final promotionCode = state.promotionCode.copyWith(code: event.code);
    emit(
      state.copyWith(
        promotionCode: promotionCode,
        invalidPromotionCodeMessage: none(),
      ),
    );
  }

  FutureOr<void> _onTicketQuantityChanged(
    _TicketQuantityChanged event,
    Emitter<TicketCheckoutState> emit,
  ) async {
    if (event.quantity < 1) return;
    final amounts = _getTotalAndServiceFeeAmount(
      promotionCodeAmountOff: state.promotionCode.amountOff,
      ticketQuantity: event.quantity,
      ticketPrice: _currentTicketPrice,
    );
    emit(
      state.copyWith(
        ticketQuantity: event.quantity,
        totalAmount: some(amounts.value1),
        serviceFeeAmount: some(amounts.value2),
      ),
    );
  }

  FutureOr<void> _onPromotionCodeResetted(
    _PromotionCodeResetted event,
    Emitter<TicketCheckoutState> emit,
  ) {
    final amounts = _getTotalAndServiceFeeAmount(
      promotionCodeAmountOff: 0,
      ticketQuantity: state.ticketQuantity,
      ticketPrice: _currentTicketPrice,
    );
    emit(
      state.copyWith(
        totalAmount: some(amounts.value1),
        promotionCode: PromotionCode.empty(),
        promotionCodeStatus: CubitStatus.initial,
        invalidPromotionCodeMessage: none(),
        serviceFeeAmount: some(amounts.value2),
      ),
    );
  }

  FutureOr<void> _onCustomerDataChanged(
    _CustomerDataChanged event,
    Emitter<TicketCheckoutState> emit,
  ) {
    final ticketCheckoutData = state.ticketCheckoutData
        .getOrCrash()
        .copyWith(customerData: event.data);
    emit(state.copyWith(ticketCheckoutData: some(ticketCheckoutData)));
  }

  Tuple2<double, double> _getTotalAndServiceFeeAmount({
    required int promotionCodeAmountOff,
    required int ticketQuantity,
    required int ticketPrice,
    TicketCheckoutData? checkoutData,
  }) {
    var totalAmount = (ticketPrice * ticketQuantity).toDouble();
    final serviceFeeAmount = _getServiceFeeAmount(
      totalAmount,
      checkoutData: checkoutData,
    );
    totalAmount += serviceFeeAmount;
    totalAmount -= promotionCodeAmountOff;
    return tuple2(totalAmount, serviceFeeAmount);
  }

  double _getServiceFeeAmount(
    double totalAmount, {
    TicketCheckoutData? checkoutData,
  }) {
    final data = checkoutData ?? state.ticketCheckoutData.getOrCrash();
    final serviceFee = data.serviceFee;
    final minimumServiceFeeAmount = data.minimumServiceFeeAmount;
    return totalAmount * serviceFee + minimumServiceFeeAmount;
  }

  int get _currentTicketPrice =>
      state.ticketCheckoutData.getOrCrash().currentTicketPool.ticketPrice;

  _showMessageIfPoolsHaveChanged(
    TicketPool currentPool,
    Emitter<TicketCheckoutState> emit,
  ) {
    if (state.ticketCheckoutData.isNone()) return;

    final previousPool =
        state.ticketCheckoutData.getOrCrash().currentTicketPool;

    if (currentPool.isSoldOut) {
      _showSnackbarMessage(S().ticketNoLongerAvailable, emit);
      return;
    }

    if (previousPool.poolNumber < currentPool.poolNumber) {
      _showSnackbarMessage(S().ticketPoolHasSoldOut, emit);
      return;
    }

    if (previousPool.poolNumber > currentPool.poolNumber ||
        previousPool.isSoldOut && !currentPool.isSoldOut) {
      _showSnackbarMessage(S().previousTicketPoolAvailable, emit);
      return;
    }

    if (previousPool.poolNumber == currentPool.poolNumber &&
        previousPool.ticketPrice != currentPool.ticketPrice) {
      _showSnackbarMessage(S().ticketPriceHasChanged, emit);
      return;
    }
  }

  _showSnackbarMessage(
    String message,
    Emitter<TicketCheckoutState> emit,
  ) {
    if (message.isEmpty) return;
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}
