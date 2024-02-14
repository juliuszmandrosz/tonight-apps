import 'package:dartz/dartz.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_failure.dart';

abstract class MarketplaceDiscountFacade {
  Future<Either<MarketplaceDiscountFailure, List<MarketplaceDiscount>>>
      getAvailableDiscounts({
    int pageSize = 20,
    MarketplaceDiscount? lastDiscount,
  });
}
