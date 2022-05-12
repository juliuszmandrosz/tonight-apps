import 'package:raver_payments/domain/domain.dart';
import 'package:raver_translations/raver_translations.dart';

String getPaymentFailureMessage(PartnerPaymentFailure failure) {
  return failure.map(
    unexpected: (_) => S().paymentError,
    stripeError: (_) => S().paymentError,
    cancelTimeExpired: (_) => S().cancelTimeExpired,
    postponeTimeExpired: (_) => S().postponeTimeExpired,
    postponeTimeTooShort: (_) => S().postponeTimeTooShort,
    canceledByPartner: (_) => '',
  );
}
