part of 'ticket_checkout_cubit.dart';

@freezed
class TicketCheckoutState with _$TicketCheckoutState {
  const TicketCheckoutState._();

  factory TicketCheckoutState({
    required PromotionCode promotionCode,
    required Option<Event> event,
    required Option<String> invalidPromotionCodeMessage,
    required bool isVip,
    required Option<int> ticketPrice,
    required Option<Ticket> purchasedTicket,
    required Option<EventTickets> eventTickets,
    required CubitStatus initialStatus,
    required CubitStatus promotionCodeStatus,
    required CubitStatus proceedingToPaymentStatus,
    required Option<String> snackbarMessage,
    required bool sendInvoice,
    required Option<CustomerData> customerData,
    required Option<double> serviceFee,
    required Option<double> serviceFeeAmount,
    required Option<double> totalAmount,
    required Option<CurrencyParams> currencyParams,
    required Option<UserPaymentFailure> paymentFailure,
    required Option<RaverPaymentMethod> paymentMethod,
  }) = _TicketPaymentState;

  factory TicketCheckoutState.initial() => TicketCheckoutState(
        promotionCode: PromotionCode.empty(),
        invalidPromotionCodeMessage: none(),
        initialStatus: CubitStatus.initial,
        proceedingToPaymentStatus: CubitStatus.initial,
        promotionCodeStatus: CubitStatus.initial,
        isVip: false,
        purchasedTicket: none(),
        eventTickets: none(),
        snackbarMessage: none(),
        event: none(),
        ticketPrice: none(),
        sendInvoice: false,
        customerData: none(),
        serviceFee: none(),
        serviceFeeAmount: none(),
        totalAmount: none(),
        currencyParams: none(),
        paymentFailure: none(),
        paymentMethod: none(),
      );
}
