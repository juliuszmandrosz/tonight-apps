part of 'marketplace_discounts_bloc.dart';

@freezed
class MarketplaceDiscountsState with _$MarketplaceDiscountsState {
  const factory MarketplaceDiscountsState({
    required CubitStatus getAvailableDiscountsStatus,
    required CubitStatus fetchNextPageAvailableDiscountsStatus,
    required bool hasReachedEndOfAvailableDiscounts,
    required List<MarketplaceDiscount> availableDiscounts,
    required CubitStatus getUserDiscountsStatus,
    required CubitStatus fetchNextPageUserDiscountsStatus,
    required bool hasReachedEndOfUserDiscounts,
    required List<UserMarketplaceDiscount> userDiscounts,
    required int availableRaverCoins,
  }) = _MarketplaceDiscountsState;

  factory MarketplaceDiscountsState.initial() =>
      const MarketplaceDiscountsState(
        getAvailableDiscountsStatus: CubitStatus.initial,
        fetchNextPageAvailableDiscountsStatus: CubitStatus.initial,
        hasReachedEndOfAvailableDiscounts: false,
        availableDiscounts: [],
        getUserDiscountsStatus: CubitStatus.initial,
        fetchNextPageUserDiscountsStatus: CubitStatus.initial,
        hasReachedEndOfUserDiscounts: false,
        userDiscounts: [],
        availableRaverCoins: 0,
      );
}
