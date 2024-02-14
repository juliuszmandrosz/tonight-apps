part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required DashboardData dashboardData,
    required CubitStatus initialStatus,
    required CubitStatus useVoucherStatus,
    required Option<String> errorMessage,
    required Option<DashboardFailure> failure,
    required Option<EventVoucher> usedVoucher,
    required CubitStatus nextPageChallengeStoriesStatus,
    required bool hasChallengeStoriesReachedMax,
  }) = _DashboardState;

  factory DashboardState.initial() => DashboardState(
        dashboardData: DashboardData.empty(),
        initialStatus: CubitStatus.initial,
        useVoucherStatus: CubitStatus.initial,
        errorMessage: none(),
        failure: none(),
        usedVoucher: none(),
        nextPageChallengeStoriesStatus: CubitStatus.initial,
        hasChallengeStoriesReachedMax: false,
      );
}
