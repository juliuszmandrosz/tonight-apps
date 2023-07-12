part of 'ticket_checkout_bloc.dart';

@freezed
class TicketCheckoutEvent with _$TicketCheckoutEvent {
  const factory TicketCheckoutEvent.stateInitialized(
    Event event,
  ) = _StateInitialized;

  const factory TicketCheckoutEvent.proceededToPayment() = _ProceededToPayment;

  const factory TicketCheckoutEvent.promotionCodeFetched() =
      _PromotionCodeFetched;

  const factory TicketCheckoutEvent.promotionCodeChanged(
    String code,
  ) = _PromotionCodeChanged;

  const factory TicketCheckoutEvent.ticketQuantityChanged(
    int quantity,
  ) = _TicketQuantityChanged;

  const factory TicketCheckoutEvent.promotionCodeResetted() =
      _PromotionCodeResetted;

  const factory TicketCheckoutEvent.customerDataChanged(
    CustomerData data,
  ) = _CustomerDataChanged;
}
