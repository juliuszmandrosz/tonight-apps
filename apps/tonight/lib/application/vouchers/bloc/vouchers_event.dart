part of 'vouchers_bloc.dart';

@freezed
class VouchersEvent with _$VouchersEvent {
  const factory VouchersEvent.vouchersFetched() = _VouchersFetched;

  const factory VouchersEvent.nextPageVouchersFetched() = _NextPageVouchersFetched;
}
