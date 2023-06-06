import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'time_task_voucher_failure.freezed.dart';

@freezed
class TimeTaskVoucherFailure with _$TimeTaskVoucherFailure {
  const factory TimeTaskVoucherFailure.unexpected() = _Unexpected;

  const factory TimeTaskVoucherFailure.voucherExpired() = _VoucherExpired;

  const factory TimeTaskVoucherFailure.voucherNotExists() = _VoucherNotExists;
}

extension TimeTaskVoucherFailureX on TimeTaskVoucherFailure {
  String get message {
    return when(
      unexpected: () => S().serverError,
      // TODO - add translations
      voucherExpired: () => 'Voucher expired',
      voucherNotExists: () => 'S().voucherNotExists',
    );
  }
}
