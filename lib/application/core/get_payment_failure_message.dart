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
    invalidCountryCode: (_) => S().invalidCountryCode,
    invalidVatNumber: (_) => S().invalidVatNumber,
    vipNoLongerAvailable: (_) => S().vipNoLongerAvailable,
    eventHasEnded: (_) => S().eventHasEnded,
    // TODO - add better message here
    eventSoldOut: (_) => S().soldOut,
    canceledByUser: (_) => '',
  );
}
