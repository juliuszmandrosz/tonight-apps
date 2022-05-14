import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_payment_failure.freezed.dart';

@freezed
class PartnerPaymentFailure with _$PartnerPaymentFailure {
  const factory PartnerPaymentFailure.unexpected() = _PaymentFailure;

  const factory PartnerPaymentFailure.stripeError() = _StripeError;

  const factory PartnerPaymentFailure.canceledByPartner() = _CanceledByPartner;

  const factory PartnerPaymentFailure.cancelTimeExpired() = _CancelTimeExpired;

  const factory PartnerPaymentFailure.postponeTimeExpired() = _PostponeTimeExpired;

  const factory PartnerPaymentFailure.postponeTimeTooShort() = _PostponeTimeTooShort;
}
