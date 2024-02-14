part of 'marketplace_discounts_bloc.dart';

@freezed
class MarketplaceDiscountsEvent with _$MarketplaceDiscountsEvent {
  const factory MarketplaceDiscountsEvent.stateInitialized(
    int availableRaverCoins,
  ) = _StateInitialized;

  const factory MarketplaceDiscountsEvent.availableDiscountsFetched() =
      _AvailableDiscountsFetched;

  const factory MarketplaceDiscountsEvent.nextPageAvailableDiscountsFetched() =
      _NextPageAvailableDiscountsFetched;

  const factory MarketplaceDiscountsEvent.userDiscountsFetched() =
      _UserDiscountsFetched;

  const factory MarketplaceDiscountsEvent.nextPageUserDiscountsFetched() =
      _NextPageUserDiscountsFetched;

  const factory MarketplaceDiscountsEvent.discountRedeemed(
    MarketplaceDiscount discount,
  ) = _DiscountRedeemed;
}
