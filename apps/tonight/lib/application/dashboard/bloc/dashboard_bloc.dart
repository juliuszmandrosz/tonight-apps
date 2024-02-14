import 'dart:async';

import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/application/dashboard/aggregator/dashboard_aggregator.dart';
import 'package:tonight/application/dashboard/aggregator/dashboard_failure.dart';
import 'package:tonight/application/dashboard/models/dashboard_data_model.dart';
import 'package:tonight/application/dashboard/models/event_voucher_model.dart';
import 'package:tonight/application/dashboard/models/user_stories_with_interactions.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final DashboardAggregator _dashboardAggregator;

  DashboardBloc(this._dashboardAggregator) : super(DashboardState.initial()) {
    on<_DataInitialized>(_onDataInitialized);
    on<_EventVoucherUsed>(_onEventVoucherUsed);
    on<_OtherUserStoriesUpdated>(_onOtherUserStoriesUpdated);
    on<_CurrentUserStoriesUpdated>(_onCurrentUserStoriesUpdated);
  }

  FutureOr<void> _onDataInitialized(
    _DataInitialized event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));
    final result = await _dashboardAggregator.initData(event.userLocation);
    result.fold(
      (failure) => emit(
        state.copyWith(
          initialStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (data) => emit(
        state.copyWith(
          initialStatus: CubitStatus.success,
          dashboardData: data,
        ),
      ),
    );
  }

  FutureOr<void> _onEventVoucherUsed(
    _EventVoucherUsed event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(useVoucherStatus: CubitStatus.loading));
    final result = await _dashboardAggregator.useVoucher(event.voucher.id);
    result.fold(
      (failure) {
        emit(state.copyWith(useVoucherStatus: CubitStatus.failure));
        _showSnackbar(emit, failure.message);
      },
      (_) {
        emit(
          state.copyWith(
            useVoucherStatus: CubitStatus.success,
            usedVoucher: some(event.voucher),
          ),
        );
        emit(state.copyWith(usedVoucher: none()));
      },
    );
  }

  _showSnackbar(
    Emitter<DashboardState> emit,
    String message,
  ) {
    emit(state.copyWith(errorMessage: some(message)));
    emit(state.copyWith(errorMessage: none()));
  }

  FutureOr<void> _onOtherUserStoriesUpdated(
    _OtherUserStoriesUpdated event,
    Emitter<DashboardState> emit,
  ) {
    final data = state.dashboardData.copyWith(otherUsersStories: event.stories);
    emit(state.copyWith(dashboardData: data));
  }

  FutureOr<void> _onCurrentUserStoriesUpdated(
    _CurrentUserStoriesUpdated event,
    Emitter<DashboardState> emit,
  ) {
    final data =
        state.dashboardData.copyWith(currentUserStories: event.stories);
    emit(state.copyWith(dashboardData: data));
  }
}
