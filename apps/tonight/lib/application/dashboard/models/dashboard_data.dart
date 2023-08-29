import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/dashboard/aggregator/dashboard_failure.dart';
import 'package:tonight/application/dashboard/models/tonight_event_model.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';

part 'dashboard_data.freezed.dart';

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    required Either<DashboardFailure, List<TonightEvent>> tonightEvents,
    required Either<DashboardFailure, List<MarketplaceDiscount>>
        marketplaceDiscounts,
    required Either<DashboardFailure, int> availableRaverCoins,
  }) = _DashboardData;

  factory DashboardData.empty() => DashboardData(
        tonightEvents: right([]),
        marketplaceDiscounts: right([]),
        availableRaverCoins: right(0),
      );
}
