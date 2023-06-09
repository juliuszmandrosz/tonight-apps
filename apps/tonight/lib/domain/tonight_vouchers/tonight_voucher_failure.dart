import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'tonight_voucher_failure.freezed.dart';

@freezed
class TonightVoucherFailure with _$TonightVoucherFailure {
  const factory TonightVoucherFailure.unexpected() = _Unexpected;

  const factory TonightVoucherFailure.voucherAlreadyUsedTonight() =
      _VoucherAlreadyUsedTonight;

  const factory TonightVoucherFailure.voucherAlreadyUsedOnEvent() =
      _VoucherAlreadyUsedOnEvent;

  const factory TonightVoucherFailure.voucherExpired() = _VoucherExpired;

  const factory TonightVoucherFailure.voucherUsageLimitReached() =
      _VoucherUsageLimitReached;
}

extension TonightVoucherFailureX on TonightVoucherFailure {
  String get message => when(
        unexpected: () => S().serverError,
        voucherAlreadyUsedTonight: () => S().voucherUsedTonight,
        voucherAlreadyUsedOnEvent: () => S().voucherUsedOnEvent,
        voucherExpired: () => S().voucherExpired,
        voucherUsageLimitReached: () => S().voucherLimitReached,
      );
}
