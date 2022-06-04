part of 'overview_cubit.dart';

@freezed
class OverviewState with _$OverviewState {
  const factory OverviewState({
    required CubitStatus status,
    required Option<ClubSales> clubSales,
    required List<PartnerDiscount> discounts,
  }) = _OverviewState;

  factory OverviewState.initial() => OverviewState(
        status: CubitStatus.initial,
        clubSales: none(),
        discounts: [],
      );
}
