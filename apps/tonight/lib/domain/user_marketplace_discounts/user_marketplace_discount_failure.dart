import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'user_marketplace_discount_failure.freezed.dart';

@freezed
class UserMarketplaceDiscountFailure with _$UserMarketplaceDiscountFailure {
  const factory UserMarketplaceDiscountFailure.unexpected() = _Unexpected;

  const factory UserMarketplaceDiscountFailure.insufficientRaverCoins() =
      _InsufficientRaverCoins;
}

extension UserMarketplaceDiscountFailureX on UserMarketplaceDiscountFailure {
  String get message {
    return when(
      unexpected: () => S().serverError,
      insufficientRaverCoins: () =>
          // TODO - add translation
          'You do not have enough Raver Coins to redeem this discount.',
    );
  }
}
