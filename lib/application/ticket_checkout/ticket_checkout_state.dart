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
    required int checkoutPrice,
    required bool hasTicketPoolChanged,
    required Option<Ticket> purchasedTicket,
    required Option<EventTickets> eventTickets,
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
        checkoutPrice: 0,
        hasTicketPoolChanged: false,
        purchasedTicket: none(),
        eventTickets: none(),
      );
}
