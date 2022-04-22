import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_failure.freezed.dart';

@freezed
class PaymentFailure with _$PaymentFailure {
  const factory PaymentFailure.unexpected() = _PaymentFailure;

  const factory PaymentFailure.stripeError() = _StripeError;

  const factory PaymentFailure.invalidPromotionCode() = _InvalidPromotionCode;

  const factory PaymentFailure.promotionCodeExpired() = _PromotionCodeExpired;

  const factory PaymentFailure.invalidEvent() = _InvalidEvent;

  const factory PaymentFailure.canceled() = _Canceled;
}
