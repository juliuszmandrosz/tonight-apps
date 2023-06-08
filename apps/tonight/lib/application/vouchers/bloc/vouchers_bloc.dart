import 'dart:async';

import 'package:collection/collection.dart';
import 'package:common/application/bloc_throttle_debounce.dart';
import 'package:common/application/cubit_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/vouchers/aggregator/vouchers_aggregator.dart';
import 'package:tonight/application/vouchers/models/voucher_model.dart';
import 'package:tonight/application/vouchers/models/voucher_type.dart';

part 'vouchers_bloc.freezed.dart';
part 'vouchers_event.dart';
part 'vouchers_state.dart';

const _pageSize = 10;

class VouchersBloc extends Bloc<VouchersEvent, VouchersState> {
  final VouchersAggregator _vouchersAggregator;

  VouchersBloc(this._vouchersAggregator) : super(VouchersState.initial()) {
    on<_VouchersFetched>(_onVouchersFetched);
    on<_NextPageVouchersFetched>(
      _onNextPageVouchersFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onVouchersFetched(
    _VouchersFetched event,
    Emitter<VouchersState> emit,
  ) async {
    emit(state.copyWith(fetchVouchersStatus: CubitStatus.loading));
    final result =
        await _vouchersAggregator.fetchUserVouchers(pageSize: _pageSize);
    result.fold(
      (failure) => emit(
        state.copyWith(fetchVouchersStatus: CubitStatus.failure),
      ),
      (vouchers) => emit(
        state.copyWith(
          fetchVouchersStatus: CubitStatus.success,
          vouchers: vouchers,
          hasReachedMax: vouchers.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageVouchersFetched(
    _NextPageVouchersFetched event,
    Emitter<VouchersState> emit,
  ) async {
    if (state.hasReachedMax ||
        state.nextPageStatus == CubitStatus.loading ||
        state.vouchers.isEmpty) {
      return;
    }
    emit(state.copyWith(nextPageStatus: CubitStatus.loading));
    final result = await _vouchersAggregator.fetchUserVouchers(
      pageSize: _pageSize,
      lastUserTonightVoucherId:
          state.vouchers.lastWhereOrNull((v) => v.voucherType.isTonight)?.id,
      lastTimeTaskVoucherId:
          state.vouchers.lastWhereOrNull((v) => v.voucherType.isTimeTask)?.id,
    );
    result.fold(
      (failure) => emit(
        state.copyWith(nextPageStatus: CubitStatus.failure),
      ),
      (vouchers) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          vouchers: [...state.vouchers, ...vouchers],
          hasReachedMax: vouchers.length < _pageSize,
        ),
      ),
    );
  }
}
