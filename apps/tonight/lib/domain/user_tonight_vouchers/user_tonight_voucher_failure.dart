import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'user_tonight_voucher_failure.freezed.dart';

@freezed
class UserTonightVoucherFailure with _$UserTonightVoucherFailure {
  const factory UserTonightVoucherFailure.unexpected() = _Unexpected;

  const factory UserTonightVoucherFailure.voucherExpired() = _VoucherExpired;
}

extension UserTonightVoucherFailureX on UserTonightVoucherFailure {
  String get message => when(
        unexpected: () => S().serverError,
        // TODO - add translation
        voucherExpired: () => 'Voucher expired',
      );
}
