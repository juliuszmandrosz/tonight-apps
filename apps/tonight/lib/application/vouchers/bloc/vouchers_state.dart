part of 'vouchers_bloc.dart';

@freezed
class VouchersState with _$VouchersState {
  const factory VouchersState({
    required List<Voucher> vouchers,
    required bool hasReachedMax,
    required CubitStatus fetchVouchersStatus,
    required CubitStatus nextPageStatus,
  }) = _VouchersState;

  factory VouchersState.initial() => const VouchersState(
        vouchers: [],
        hasReachedMax: false,
        fetchVouchersStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
      );
}
