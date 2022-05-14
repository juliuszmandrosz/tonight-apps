import 'package:raver_payments/domain/failures/partner_payment_failure.dart';

const paymentCloudFunctionsErrors = {
  'cancel-time-expired': PartnerPaymentFailure.cancelTimeExpired(),
  'postpone-time-expired': PartnerPaymentFailure.postponeTimeExpired(),
  'postpone-time-too-short': PartnerPaymentFailure.postponeTimeTooShort(),
};
