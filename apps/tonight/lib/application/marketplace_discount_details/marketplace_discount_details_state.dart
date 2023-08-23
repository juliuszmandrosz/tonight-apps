part of 'marketplace_discount_details_cubit.dart';

@freezed
class MarketplaceDiscountDetailsState with _$MarketplaceDiscountDetailsState {
  const factory MarketplaceDiscountDetailsState({
    required Option<UserMarketplaceDiscount> redeemedDiscount,
    required CubitStatus redeemDiscountStatus,
    required Option<String> snackbarMessage,
  }) = _MarketplaceDiscountDetailsState;

  factory MarketplaceDiscountDetailsState.initial() =>
      MarketplaceDiscountDetailsState(
        redeemedDiscount: none(),
        redeemDiscountStatus: CubitStatus.initial,
        snackbarMessage: none(),
      );
}
