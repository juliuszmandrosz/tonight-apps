import 'package:raver/domain/payments/payment_failure.dart';

const cloudFunctionsFailures = {
  'invalid-promotion-code': PaymentFailure.invalidPromotionCode(),
  'expired-promotion-code': PaymentFailure.promotionCodeExpired(),
  'invalid-event': PaymentFailure.invalidEvent(),
  'ticket-already-has-vip': PaymentFailure.ticketAlreadyHasVip(),
};
