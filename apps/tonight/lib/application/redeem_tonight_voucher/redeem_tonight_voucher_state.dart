part of 'redeem_tonight_voucher_cubit.dart';

@freezed
class RedeemTonightVoucherState with _$RedeemTonightVoucherState {
  const factory RedeemTonightVoucherState({
    required CubitStatus redeemVoucherStatus,
    required Option<String> snackbarMessage,
    required Option<TonightVoucherFailure> failure,
  }) = _RedeemTonightVoucherState;


  factory RedeemTonightVoucherState.initial() =>
      RedeemTonightVoucherState(
        redeemVoucherStatus: CubitStatus.initial,
        snackbarMessage: none(),
        failure: none(),
      );
}
