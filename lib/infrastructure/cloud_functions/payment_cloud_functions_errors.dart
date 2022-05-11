import 'package:raver_payments/domain/failures/partner_payment_failure.dart';

const paymentCloudFunctionsErrors = {
  'cancel-time-expired': PartnerPaymentFailure.cancelTimeExpired(),
};
