import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_discount_failure.freezed.dart';

@freezed
class MarketplaceDiscountFailure with _$MarketplaceDiscountFailure {
  const factory MarketplaceDiscountFailure.unexpected() = _Unexpected;
}
