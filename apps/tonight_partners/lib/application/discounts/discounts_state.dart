part of 'discounts_cubit.dart';

@freezed
class DiscountsState with _$DiscountsState {
  const factory DiscountsState({
    required CubitStatus status,
    required Option<ClubSales> clubSales,
    required List<PartnerDiscount> discounts,
  }) = _DiscountsState;

  factory DiscountsState.initial() => DiscountsState(
        status: CubitStatus.initial,
        clubSales: none(),
        discounts: [],
      );
}
