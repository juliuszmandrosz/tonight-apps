import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_entity.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_facade.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_failure.dart';

part 'activate_time_task_reward_cubit.freezed.dart';
part 'activate_time_task_reward_state.dart';

class ActivateTimeTaskRewardCubit extends Cubit<ActivateTimeTaskRewardState> {
  final TimeTaskVoucherFacade _timeTaskVoucherFacade;
  StreamSubscription<Either<TimeTaskVoucherFailure, TimeTaskVoucher>>?
      _voucherStreamSubscription;

  ActivateTimeTaskRewardCubit(this._timeTaskVoucherFacade)
      : super(ActivateTimeTaskRewardState.initial());

  Future<void> listenVoucherByTimeTaskId(String timeTaskId) async {
    emit(state.copyWith(getVoucherStatus: CubitStatus.loading));
    _voucherStreamSubscription?.cancel();
    _voucherStreamSubscription =
        _timeTaskVoucherFacade.listenVoucherByTimeTaskId(timeTaskId).listen(
              (result) => result.fold(
                (failure) => emit(
                  state.copyWith(
                    getVoucherStatus: CubitStatus.failure,
                    failure: some(failure),
                  ),
                ),
                (voucher) => emit(
                  state.copyWith(
                    getVoucherStatus: CubitStatus.success,
                    voucher: some(voucher),
                  ),
                ),
              ),
            );
  }

  Future<void> activateVoucher() async {
    emit(state.copyWith(activateVoucherStatus: CubitStatus.loading));
    final result = await _timeTaskVoucherFacade.activateVoucher(
      state.voucher.getOrCrash().timeTaskId,
    );
    result.fold(
      (failure) {
        _showMessage(failure.message);
        emit(state.copyWith(activateVoucherStatus: CubitStatus.failure));
      },
      (_) => emit(state.copyWith(activateVoucherStatus: CubitStatus.success)),
    );
  }

  Future<void> receiveReward() async {
    emit(state.copyWith(receiveRewardStatus: CubitStatus.loading));
    final voucher = state.voucher.getOrCrash();
    final result = await _timeTaskVoucherFacade.acquireReward(
      timeTaskId: voucher.timeTaskId,
      wallPhotoId: voucher.wallPhotoId,
    );
    result.fold(
      (failure) {
        _showMessage(failure.message);
        emit(state.copyWith(receiveRewardStatus: CubitStatus.failure));
      },
      (_) => emit(state.copyWith(receiveRewardStatus: CubitStatus.success)),
    );
  }

  _showMessage(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }

  @override
  Future<void> close() async {
    await _voucherStreamSubscription?.cancel();
    return super.close();
  }
}
