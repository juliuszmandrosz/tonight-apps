import 'package:raver_payments/domain/failures/partner_payment_failure.dart';
import 'package:raver_payments/domain/failures/user_payment_failure.dart';

const paymentCloudFunctionsErrors = {
  'cancel-time-expired': PartnerPaymentFailure.cancelTimeExpired(),
  'postpone-time-expired': PartnerPaymentFailure.postponeTimeExpired(),
  'postpone-time-too-short': PartnerPaymentFailure.postponeTimeTooShort(),
  'invalid-promotion-code': UserPaymentFailure.invalidPromotionCode(),
  'expired-promotion-code': UserPaymentFailure.promotionCodeExpired(),
  'invalid-event': UserPaymentFailure.invalidEvent(),
  'return-time-expired': UserPaymentFailure.returnTimeExpired(),
  'ticket-already-has-vip': UserPaymentFailure.ticketAlreadyHasVip(),
  'event-canceled': UserPaymentFailure.eventCanceled(),
  'event-postponed': UserPaymentFailure.eventBeingPostponed(),
};
