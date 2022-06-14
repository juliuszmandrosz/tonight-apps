import 'package:raver_payments/domain/domain.dart';
import 'package:raver_translations/raver_translations.dart';

String getPaymentFailureMessage(UserPaymentFailure failure) {
  return failure.map(
    unexpected: (_) => S().serverError,
    stripeError: (_) => S().paymentError,
    invalidPromotionCode: (_) => S().invalidPromotionCode,
    promotionCodeExpired: (_) => S().promotionCodeHasExpired,
    invalidEvent: (_) => S().invalidEvent,
    ticketAlreadyHasVip: (_) => S().ticketAlreadyHasVipStatus,
    returnTimeExpired: (_) => S().returnTimeIsOver,
    eventCanceled: (_) => S().eventCancelled,
    eventBeingPostponed: (_) => S().eventBeingPostponed,
    // TODO - add translations
    invalidCountryCode: (_) => 'Invalid country code',
    invalidVatNumber: (_) => 'Invalid vat number',
    vipNoLongerAvailable: (_) => 'Vip nie jest już dostępny',
    canceledByUser: (_) => '',
  );
}
