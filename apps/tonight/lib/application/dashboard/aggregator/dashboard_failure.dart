import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'dashboard_failure.freezed.dart';

@freezed
class DashboardFailure with _$DashboardFailure {
  const factory DashboardFailure.unexpected() = _Unexpected;

  const factory DashboardFailure.noConnection() = _NoConnection;

  const factory DashboardFailure.voucherAlreadyUsedTonight() =
      _VoucherAlreadyUsedTonight;

  const factory DashboardFailure.voucherAlreadyUsedOnEvent() =
      _VoucherAlreadyUsedOnEvent;

  const factory DashboardFailure.voucherExpired() = _VoucherExpired;

  const factory DashboardFailure.voucherUsageLimitReached() =
      _VoucherUsageLimitReached;
}

extension DashboardFailureX on DashboardFailure {
  String get message => when(
        unexpected: () => S().serverError,
        noConnection: () => S().errorCheckInternetConnection,
        voucherAlreadyUsedTonight: () => S().voucherUsedTonight,
        voucherAlreadyUsedOnEvent: () => S().voucherUsedOnEvent,
        voucherExpired: () => S().voucherExpired,
        voucherUsageLimitReached: () => S().voucherLimitReached,
      );
}
