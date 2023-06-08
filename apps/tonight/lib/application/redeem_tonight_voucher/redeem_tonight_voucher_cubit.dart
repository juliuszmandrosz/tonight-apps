import 'package:common/application/cubit_status.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_failure.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_facade.dart';

part 'redeem_tonight_voucher_cubit.freezed.dart';
part 'redeem_tonight_voucher_state.dart';

class RedeemTonightVoucherCubit extends Cubit<RedeemTonightVoucherState> {
  final UserTonightVoucherFacade _userTonightVoucherFacade;

  RedeemTonightVoucherCubit(this._userTonightVoucherFacade)
      : super(RedeemTonightVoucherState.initial());

  Future<void> redeemTonightVoucher(String eventId) async {
    emit(state.copyWith(redeemVoucherStatus: CubitStatus.loading));
    final result =
        await _userTonightVoucherFacade.redeemTonightVoucher(eventId);
    result.fold(
      (failure) {
        emit(state.copyWith(redeemVoucherStatus: CubitStatus.failure));
        _showSnackbar(failure.message);
      },
      (_) => emit(state.copyWith(redeemVoucherStatus: CubitStatus.success)),
    );
  }

  _showSnackbar(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}
