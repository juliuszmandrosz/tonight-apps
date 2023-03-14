import 'package:dartz/dartz.dart';
import 'package:tonight_partners/domain/discounts/discount_failure.dart';
import 'package:tonight_partners/domain/discounts/partner_discount_entity.dart';

abstract class DiscountFacade {
  Future<Either<DiscountFailure, List<PartnerDiscount>>>
      getAvailableDiscounts();

  Future<Either<DiscountFailure, List<PartnerDiscount>>> getAllDiscounts();
}
