import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/domain/payments/payment_facade.dart';
import 'package:raver/domain/payments/payment_failure.dart';
import 'package:raver/domain/payments/promotion_code_entity.dart';
import 'package:raver/domain/payments/ticket_payment_entity.dart';
import 'package:raver/domain/payments/vip_payment_entity.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

part 'ticket_checkout_cubit.freezed.dart';
part 'ticket_checkout_state.dart';

class TicketCheckoutCubit extends Cubit<TicketCheckoutState> {
  final PaymentFacade _paymentFacade;
  final TicketListCubit _ticketListCubit;

  TicketCheckoutCubit({
    required PaymentFacade paymentFacade,
    required TicketListCubit ticketListCubit,
  })  : _paymentFacade = paymentFacade,
        _ticketListCubit = ticketListCubit,
        super(TicketCheckoutState.initial());

  void proceedToPayForTicket() async {
    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final event = state.eventInitData.getOrCrash();

    var ticketPayment = TicketPayment(
      eventId: event.id,
      clubId: event.clubId,
      price: state.price,
      currency: event.currency,
      isVip: state.isVip,
      eventDateTime: event.eventStartDateTime,
      eventName: event.eventName,
      clubName: event.clubName,
    );

    if (state.promotionCodeStatus.isSuccess()) {
      ticketPayment = ticketPayment.copyWith(
        promotionCode: state.promotionCode.code.toUpperCase(),
      );
    }

    final failureOrSuccess =
        await _paymentFacade.proceedToPayForTicket(ticketPayment);

    failureOrSuccess.fold(
      (failure) => _emitProceedingToPaymentFailure(failure),
      (ticket) {
        _ticketListCubit.addTicketToState(ticket);
        emit(
          state.copyWith(
            proceedingToPaymentStatus: CubitStatus.success,
            purchasedTicket: some(ticket),
          ),
        );
      },
    );
  }

  void proceedToPayForVip() async {
    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final ticketInitData = state.ticketInitData.getOrCrash();

    var vipPayment = VipPayment(
      ticketId: ticketInitData.id,
      currency: ticketInitData.currency,
      price: state.price,
    );

    if (state.promotionCodeStatus.isSuccess()) {
      vipPayment = vipPayment.copyWith(
        promotionCode: state.promotionCode.code.toUpperCase(),
      );
    }

    final failureOrSuccess =
        await _paymentFacade.proceedToPayForVip(vipPayment);

    failureOrSuccess.fold(
      (failure) => _emitProceedingToPaymentFailure(failure),
      (ticket) {
        _ticketListCubit.updateTicketInState(ticketInitData, ticket);
        emit(
          state.copyWith(
            proceedingToPaymentStatus: CubitStatus.success,
            purchasedTicket: some(ticket),
          ),
        );
      },
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
            price: state.price - code.amountOff,
          ),
        );
      },
    );
  }

  void initEventData(Event event) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    final vipPrice = await _paymentFacade
        .getVipPrice(event.id)
        .then((result) => result.fold((failure) => null, (price) => price));

    emit(state.copyWith(
      eventInitData: some(event),
      price: event.price,
      vipPrice: vipPrice,
      initialStatus: CubitStatus.success,
    ));
  }

  void initTicketData(Ticket ticket) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    final vipPrice = await _paymentFacade.getVipPrice(ticket.eventId);

    vipPrice.fold(
      (_) => _emitGettingVipPriceFailure(),
      (price) => emit(
        state.copyWith(
          ticketInitData: some(ticket),
          price: price,
          initialStatus: CubitStatus.success,
          isVip: true,
        ),
      ),
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
        price: state.price + state.promotionCode.amountOff,
        promotionCode: PromotionCode.empty(),
        promotionCodeStatus: CubitStatus.initial,
        invalidPromotionCodeMessage: none(),
      ),
    );
  }

  void isVipChanged(bool value) {
    if (state.vipPrice == null) return;

    final newPrice =
        value ? state.price + state.vipPrice! : state.price - state.vipPrice!;

    emit(
      state.copyWith(
        isVip: value,
        price: newPrice,
      ),
    );
  }

  _emitProceedingToPaymentFailure(PaymentFailure failure) {
    final message = _getFailureMessage(failure, isPayment: true);

    if (message.isNotEmpty) {
      emit(state.copyWith(paymentFailureMessage: some(message)));
    }

    emit(state.copyWith(
      paymentFailureMessage: none(),
      proceedingToPaymentStatus: CubitStatus.failure,
    ));
  }

  _emitGettingVipPriceFailure() {
    final message = S().serverError;

    emit(state.copyWith(paymentFailureMessage: some(message)));

    emit(state.copyWith(
      paymentFailureMessage: none(),
      initialStatus: CubitStatus.failure,
    ));
  }

  _emitPromotionCodeFailure(PaymentFailure failure) {
    final message = _getFailureMessage(failure);

    message == S().serverError
        ? emit(state.copyWith(paymentFailureMessage: some(message)))
        : emit(state.copyWith(invalidPromotionCodeMessage: some(message)));

    emit(
      state.copyWith(
        promotionCodeStatus: CubitStatus.failure,
        paymentFailureMessage: none(),
      ),
    );
  }

  String _getFailureMessage(PaymentFailure failure, {bool isPayment = false}) {
    return failure.map(
      unexpected: (_) => isPayment ? S().paymentError : S().serverError,
      stripeError: (_) => S().paymentError,
      invalidPromotionCode: (_) => S().invalidPromotionCode,
      promotionCodeExpired: (_) => S().promotionCodeHasExpired,
      invalidEvent: (_) => S().invalidEvent,
      ticketAlreadyHasVip: (_) => S().ticketAlreadyHasVipStatus,
      canceled: (_) => '',
    );
  }
}
