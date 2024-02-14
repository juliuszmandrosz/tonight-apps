import 'package:dartz/dartz.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_entity.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_failure.dart';

abstract class UserMarketplaceDiscountFacade {
  Future<Either<UserMarketplaceDiscountFailure, List<UserMarketplaceDiscount>>>
      getUserDiscounts({
    int pageSize = 20,
    UserMarketplaceDiscount? lastDiscount,
  });

  /// Returns discount code on success
  Future<Either<UserMarketplaceDiscountFailure, UserMarketplaceDiscount>>
      redeemDiscount(
    String discountId,
  );
}
