import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_failure.freezed.dart';

@freezed
class DiscountFailure with _$DiscountFailure {
  const factory DiscountFailure.unexpected() = _Unexpected;
}
