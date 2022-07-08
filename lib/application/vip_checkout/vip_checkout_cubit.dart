import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
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
  final CurrencyParamsFacade _currencyParamsFacade;
  final FirebaseRemoteConfig _remoteConfig;
  StreamSubscription? _eventTicketsSubscription;
  StreamSubscription? _userTicketsSubscription;

  VipCheckoutCubit({
    required UserPaymentFacade paymentFacade,
    required TicketListCubit ticketListCubit,
    required EventTicketsCubit eventTicketsCubit,
    required CurrencyParamsFacade currencyParamsFacade,
    required FirebaseRemoteConfig firebaseRemoteConfig,
  })  : _paymentFacade = paymentFacade,
        _ticketListCubit = ticketListCubit,
        _eventTicketsCubit = eventTicketsCubit,
        _currencyParamsFacade = currencyParamsFacade,
        _remoteConfig = firebaseRemoteConfig,
        super(VipCheckoutState.initial());

  void initData(Ticket ticket) async {
    emit(
      state.copyWith(
        initialStatus: CubitStatus.loading,
        ticket: some(ticket),
      ),
    );

    _initServiceFee();

    await _initCurrencyParams();

    if (state.initialStatus.isFailure()) return;

    await _initInvoiceData();

    if (state.initialStatus.isFailure()) return;

    _initEventTickets(ticket);
  }

  void sendInvoiceChanged(bool value) {
    emit(state.copyWith(sendInvoice: value));
  }

  void invoiceDataChanged(InvoiceData data) {
    emit(state.copyWith(invoiceData: some(data)));
  }

  void proceedToPayForVip() async {
    if (state.sendInvoice && !_validateInvoiceData()) return;

    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final ticket = state.ticket.getOrCrash();

    _waitForTicketToBeUpdated();

    final promotionCode =
        state.promotionCode.code.isNotEmpty && state.promotionCode.isValid
            ? state.promotionCode.code
            : null;

    final failureOrSuccess = await _paymentFacade.proceedToPayForVip(
      ticketId: ticket.id,
      currency: ticket.currency,
      sendInvoice: state.sendInvoice,
      promotionCode: promotionCode,
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
        final newVipPrice = state.vipPrice.getOrCrash() - code.amountOff;
        final serviceFeeAmount = _getServiceFeeAmount(newVipPrice);
        final totalAmount = _getTotalAmount(newVipPrice, serviceFeeAmount);
        emit(
          state.copyWith(
            promotionCode: code,
            promotionCodeStatus: CubitStatus.success,
            invalidPromotionCodeMessage: none(),
            vipPrice: some(newVipPrice),
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
    final newVipPrice =
        state.vipPrice.getOrCrash() + state.promotionCode.amountOff;

    final serviceFeeAmount = _getServiceFeeAmount(newVipPrice);
    final totalAmount = _getTotalAmount(newVipPrice, serviceFeeAmount);

    emit(
      state.copyWith(
        vipPrice: some(newVipPrice),
        serviceFeeAmount: some(serviceFeeAmount),
        totalAmount: some(totalAmount),
        promotionCode: PromotionCode.empty(),
        promotionCodeStatus: CubitStatus.initial,
        invalidPromotionCodeMessage: none(),
      ),
    );
  }

  Future<void> _initCurrencyParams() async {
    final currency = state.ticket.getOrCrash().currency;

    final failureOrSuccess =
        await _currencyParamsFacade.getCurrencyParams(currency);

    failureOrSuccess.fold(
        (failure) => emit(state.copyWith(initialStatus: CubitStatus.failure)),
        (params) => emit(state.copyWith(currencyParams: some(params))));
  }

  _initServiceFee() {
    final fee = _remoteConfig.getDouble(serviceFee);
    emit(state.copyWith(serviceFee: some(fee)));
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
            emit(state.copyWith(isVipNoLongerAvailable: true));
            _showSnackbarMessage(S().vipNoLongerAvailable);
            return;
          }

          final currentVipPrice = state.vipPrice;

          if (currentVipPrice.isSome() &&
              currentVipPrice.getOrCrash() != currentTicketPool.vipPrice) {
            _showSnackbarMessage(S().vipPriceHasChanged);
          }

          final newVipPrice = _getNewVipPrice(currentTicketPool);
          final serviceFeeAmount = _getServiceFeeAmount(newVipPrice);
          final totalAmount = _getTotalAmount(newVipPrice, serviceFeeAmount);

          emit(
            state.copyWith(
              eventTickets: some(eventTickets),
              vipPrice: some(newVipPrice),
              initialStatus: CubitStatus.success,
              serviceFeeAmount: some(serviceFeeAmount),
              totalAmount: some(totalAmount),
            ),
          );
        }
      },
    );
  }

  int _getNewVipPrice(TicketPool currentPool) {
    final currentPoolVipPrice = currentPool.vipPrice!;
    return currentPoolVipPrice - state.promotionCode.amountOff;
  }

  double _getServiceFeeAmount(int vipPrice) {
    final serviceFee = state.serviceFee.getOrCrash();
    final serviceFeeAmount = vipPrice * serviceFee;
    return serviceFeeAmount + _getMinServiceFeeAmount();
  }

  double _getMinServiceFeeAmount() {
    return state.currencyParams.getOrCrash().minServiceFeeAmount;
  }

  double _getTotalAmount(int ticketPrice, double serviceFeeAmount) {
    return ticketPrice + serviceFeeAmount;
  }

  Future<void> _waitForTicketToBeUpdated() async {
    final oldTicket = state.ticket.getOrCrash();

    _userTicketsSubscription = _ticketListCubit.stream.listen(
      (ticketListState) {
        if (ticketListState.initialStatus == CubitStatus.failure) {
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
