part of 'ticket_checkout_bloc.dart';

@freezed
class TicketCheckoutState with _$TicketCheckoutState {
  const factory TicketCheckoutState({
    required PromotionCode promotionCode,
    required Option<String> invalidPromotionCodeMessage,
    required int ticketQuantity,
    required Option<Ticket> purchasedTicket,
    required CubitStatus initialStatus,
    required CubitStatus promotionCodeStatus,
    required CubitStatus proceedingToPaymentStatus,
    required Option<String> snackbarMessage,
    required Option<double> totalAmount,
    required Option<double> serviceFeeAmount,
    required Option<TicketCheckoutData> ticketCheckoutData,
  }) = _TicketCheckoutState;

  factory TicketCheckoutState.initial() => TicketCheckoutState(
        promotionCode: PromotionCode.empty(),
        invalidPromotionCodeMessage: none(),
        initialStatus: CubitStatus.initial,
        proceedingToPaymentStatus: CubitStatus.initial,
        promotionCodeStatus: CubitStatus.initial,
        purchasedTicket: none(),
        snackbarMessage: none(),
        ticketQuantity: 1,
        totalAmount: none(),
        serviceFeeAmount: none(),
        ticketCheckoutData: none(),
      );
}
