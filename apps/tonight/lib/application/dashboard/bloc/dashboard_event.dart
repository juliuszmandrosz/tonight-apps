part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.dataInitialized(
    Option<LatLng> userLocation,
  ) = _DataInitialized;

  const factory DashboardEvent.eventVoucherUsed(EventVoucher voucher) =
      _EventVoucherUsed;

  const factory DashboardEvent.nextPageChallengeStoriesFetched() =
      _NextPageChallengeStoriesFetched;

  const factory DashboardEvent.otherUserStoriesUpdated(
    List<UserStoriesWithInteractions> stories,
  ) = _OtherUserStoriesUpdated;

  const factory DashboardEvent.currentUserStoriesUpdated(
    List<UserStoriesWithInteractions> stories,
  ) = _CurrentUserStoriesUpdated;
}
