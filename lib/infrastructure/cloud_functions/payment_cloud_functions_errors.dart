import 'package:raver_payments/domain/failures/user_payment_failure.dart';

const userPaymentCloudFunctionsErrors = {
  'invalid-promotion-code': UserPaymentFailure.invalidPromotionCode(),
  'expired-promotion-code': UserPaymentFailure.promotionCodeExpired(),
  'invalid-event': UserPaymentFailure.invalidEvent(),
  'return-time-expired': UserPaymentFailure.returnTimeExpired(),
  'ticket-already-has-vip': UserPaymentFailure.ticketAlreadyHasVip(),
  'event-canceled': UserPaymentFailure.eventCanceled(),
  'event-being-postponed': UserPaymentFailure.eventBeingPostponed(),
  'invalid-vat-number': UserPaymentFailure.invalidVatNumber(),
  'vip-no-longer-available': UserPaymentFailure.vipNoLongerAvailable(),
  'event-has-ended': UserPaymentFailure.eventHasEnded(),
};
