import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'tonight_events_failure.freezed.dart';

@freezed
class TonightEventsFailure with _$TonightEventsFailure {
  const factory TonightEventsFailure.unexpected() = _Unexpected;

  const factory TonightEventsFailure.noConnection() = _NoConnection;

  const factory TonightEventsFailure.voucherAlreadyUsedTonight() =
      _VoucherAlreadyUsedTonight;

  const factory TonightEventsFailure.voucherAlreadyUsedOnEvent() =
      _VoucherAlreadyUsedOnEvent;

  const factory TonightEventsFailure.voucherExpired() = _VoucherExpired;

  const factory TonightEventsFailure.voucherUsageLimitReached() =
      _VoucherUsageLimitReached;
}

extension TonightEventsFailureX on TonightEventsFailure {
  String get message => when(
        unexpected: () => S().serverError,
        noConnection: () => S().errorCheckInternetConnection,
        voucherAlreadyUsedTonight: () => S().voucherUsedTonight,
        voucherAlreadyUsedOnEvent: () => S().voucherUsedOnEvent,
        voucherExpired: () => S().voucherExpired,
        voucherUsageLimitReached: () => S().voucherLimitReached,
      );
}
