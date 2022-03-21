part of 'ticket_checkout_cubit.dart';

@freezed
class TicketCheckoutState with _$TicketCheckoutState {
  const TicketCheckoutState._();

  factory TicketCheckoutState({
    required PromotionCode promotionCode,
    required Option<Event> eventInitData,
    required Option<Ticket> ticketInitData,
    required Option<String> invalidPromotionCodeMessage,
    required Option<String> paymentFailureMessage,
    required CubitStatus initialStatus,
    required CubitStatus promotionCodeStatus,
    required CubitStatus proceedingToPaymentStatus,
    required bool isVip,
    required int price,
    // Vip price is for ticket payments only, in case of vip payment, vip price is defined by 'price'
    required int? vipPrice,
    required Option<Ticket> purchasedTicket,
  }) = _TicketPaymentState;

  factory TicketCheckoutState.initial() => TicketCheckoutState(
        promotionCode: PromotionCode.empty(),
        eventInitData: none(),
        ticketInitData: none(),
        invalidPromotionCodeMessage: none(),
        paymentFailureMessage: none(),
        initialStatus: CubitStatus.initial,
        proceedingToPaymentStatus: CubitStatus.initial,
        promotionCodeStatus: CubitStatus.initial,
        isVip: false,
        price: 0,
        vipPrice: null,
        purchasedTicket: none(),
      );
}
