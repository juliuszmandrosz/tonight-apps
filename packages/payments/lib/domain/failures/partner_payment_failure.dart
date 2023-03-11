import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_payment_failure.freezed.dart';

@freezed
class PartnerPaymentFailure with _$PartnerPaymentFailure {
  const factory PartnerPaymentFailure.unexpected() = _Unexpected;
}
