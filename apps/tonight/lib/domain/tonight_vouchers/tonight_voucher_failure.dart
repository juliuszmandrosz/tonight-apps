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
  // TODO - add translations
  String get message => when(
        unexpected: () => S().serverError,
        voucherAlreadyUsedTonight: () => 'Voucher already used tonight',
        voucherAlreadyUsedOnEvent: () => 'Voucher already used on this event',
        voucherExpired: () => 'Voucher expired',
        voucherUsageLimitReached: () => 'Voucher usage limit reached',
      );
}
