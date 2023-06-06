part of 'activate_time_task_reward_cubit.dart';

@freezed
class ActivateTimeTaskRewardState with _$ActivateTimeTaskRewardState {
  const factory ActivateTimeTaskRewardState({
    required CubitStatus getVoucherStatus,
    required CubitStatus activateVoucherStatus,
    required CubitStatus receiveRewardStatus,
    required Option<TimeTaskVoucher> voucher,
    required Option<String> snackbarMessage,
    required Option<TimeTaskVoucherFailure> failure,
  }) = _ActivateTimeTaskRewardState;

  factory ActivateTimeTaskRewardState.initial() => ActivateTimeTaskRewardState(
        getVoucherStatus: CubitStatus.initial,
        activateVoucherStatus: CubitStatus.initial,
        receiveRewardStatus: CubitStatus.initial,
        voucher: none(),
        snackbarMessage: none(),
        failure: none(),
      );
}
