import 'package:dartz/dartz.dart';
import 'package:raver_partners/domain/discounts/discount_failure.dart';
import 'package:raver_partners/domain/discounts/entities/collected_discount_entity.dart';
import 'package:raver_partners/domain/discounts/entities/partner_discount_entity.dart';

abstract class DiscountFacade {
  Either<DiscountFailure, List<CollectedDiscount>> getAvailableDiscounts();

  Either<DiscountFailure, List<PartnerDiscount>> getDiscounts();
}
