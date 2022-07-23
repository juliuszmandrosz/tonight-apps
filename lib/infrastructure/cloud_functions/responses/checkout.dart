import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout.freezed.dart';
part 'checkout.g.dart';


@freezed
class Checkout with _$Checkout {
  const Checkout._();

  @JsonSerializable()
  const factory Checkout({
    required String sessionId,
    required String url,
    required String paymentIntentId,
  }) = _Checkout;

  factory Checkout.fromJson(Map<String, dynamic> json) =>
      _$CheckoutFromJson(json);
}
