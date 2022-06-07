part of 'vip_checkout_cubit.dart';

@freezed
class VipCheckoutState with _$VipCheckoutState {
  const VipCheckoutState._();

  factory VipCheckoutState({
    required PromotionCode promotionCode,
    required Option<Ticket> ticket,
    required Option<String> invalidPromotionCodeMessage,
    required Option<int> vipPrice,
    required Option<Ticket> upgradedTicket,
    required Option<EventTickets> eventTickets,
    required CubitStatus initialStatus,
    required CubitStatus promotionCodeStatus,
    required CubitStatus proceedingToPaymentStatus,
    required Option<String> snackbarMessage,
    required bool isVipNoLongerAvailable,
    required bool sendInvoice,
    required Option<InvoiceData> invoiceData,
    required Option<double> serviceFee,
    required Option<double> serviceFeeAmount,
    required Option<double> totalAmount,
    required Option<CurrencyParams> currencyParams,
  }) = _VipCheckoutState;

  factory VipCheckoutState.initial() => VipCheckoutState(
        promotionCode: PromotionCode.empty(),
        invalidPromotionCodeMessage: none(),
        initialStatus: CubitStatus.initial,
        proceedingToPaymentStatus: CubitStatus.initial,
        promotionCodeStatus: CubitStatus.initial,
        eventTickets: none(),
        snackbarMessage: none(),
        vipPrice: none(),
        isVipNoLongerAvailable: false,
        ticket: none(),
        upgradedTicket: none(),
        sendInvoice: false,
        invoiceData: none(),
        serviceFee: none(),
        serviceFeeAmount: none(),
        totalAmount: none(),
        currencyParams: none(),
      );
}
