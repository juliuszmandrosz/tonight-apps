import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/payments/payment_facade.dart';
import 'package:raver/domain/payments/payment_failure.dart';
import 'package:raver/domain/payments/promotion_code_entity.dart';
import 'package:raver/domain/payments/ticket_payment_entity.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

part 'ticket_checkout_cubit.freezed.dart';
part 'ticket_checkout_state.dart';

class TicketCheckoutCubit extends Cubit<TicketCheckoutState> {
  final PaymentFacade _paymentFacade;
  final paymentFailureMessages = {
    const PaymentFailure.invalidPromotionCode(): S().invalidPromotionCode,
    const PaymentFailure.promotionCodeExpired(): S().promotionCodeHasExpired,
    const PaymentFailure.invalidEvent(): S().invalidEvent,
  };

  TicketCheckoutCubit(this._paymentFacade)
      : super(TicketCheckoutState.initial());

  void proceedToPayForTicket() async {
    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final event = state.event!;

    var ticketPayment = TicketPayment(
      eventId: event.id,
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
      (failure) {
        if (failure == const PaymentFailure.canceled()) {
          emit(state.copyWith(
            proceedingToPaymentStatus: CubitStatus.failure,
          ));
          return;
        }

        final failureMessage =
            paymentFailureMessages[failure] ?? S().paymentError;

        emit(
          state.copyWith(
            paymentFailureMessage: some(failureMessage),
          ),
        );
        emit(state.copyWith(
          paymentFailureMessage: none(),
          proceedingToPaymentStatus: CubitStatus.failure,
        ));
      },
      (ticketId) => emit(state.copyWith(
        proceedingToPaymentStatus: CubitStatus.success,
        ticketId: ticketId,
      )),
    );
  }

  void getPromotionCode() async {
    emit(state.copyWith(
      promotionCodeStatus: CubitStatus.loading,
    ));

    final failureOrSuccess = await _paymentFacade
        .getPromotionCode(state.promotionCode.code.toUpperCase());

    failureOrSuccess.fold(
      (failure) {
        final failureMessage =
            paymentFailureMessages[failure] ?? S().serverError;

        if (failure == const PaymentFailure.unexpected()) {
          emit(state.copyWith(
            promotionCodeStatus: CubitStatus.failure,
            paymentFailureMessage: some(failureMessage),
          ));
          emit(state.copyWith(paymentFailureMessage: none()));
          return;
        }

        emit(state.copyWith(
          promotionCodeStatus: CubitStatus.failure,
          invalidPromotionCodeMessage: some(failureMessage),
        ));
      },
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

  void initPaymentTicketData(Event event) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    final vipPrice = await _getVipPrice(event.id);

    emit(state.copyWith(
      event: event,
      price: event.price,
      vipPrice: vipPrice,
      initialStatus: CubitStatus.success,
    ));
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

  Future<int?> _getVipPrice(String eventId) async {
    final result = await _paymentFacade.getVipPrice(eventId, null);

    return result.fold((failure) => null, (price) => price);
  }
}
