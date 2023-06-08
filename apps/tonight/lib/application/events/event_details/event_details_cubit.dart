import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_facade.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_failure.dart';

part 'event_details_cubit.freezed.dart';
part 'event_details_state.dart';

class EventDetailsCubit extends Cubit<EventDetailsState> {
  final UserEventFacade _eventFacade;
  final TonightVoucherFacade _tonightVoucherFacade;

  EventDetailsCubit(this._eventFacade, this._tonightVoucherFacade)
      : super(EventDetailsState.initial());

  Future<void> getEventById(String eventId) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _eventFacade.getEventById(eventId);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (event) => emit(
        state.copyWith(
          event: some(event),
          status: CubitStatus.success,
        ),
      ),
    );
  }

  Future<void> useVoucher(String eventId) async {
    emit(state.copyWith(useVoucherStatus: CubitStatus.loading));
    final result = await _tonightVoucherFacade.useVoucher(eventId);
    result.fold(
      (failure) {
        _showSnackbar(failure.message);
        emit(state.copyWith(useVoucherStatus: CubitStatus.failure));
      },
      (success) => emit(state.copyWith(useVoucherStatus: CubitStatus.success)),
    );
  }

  void addEventToState(Event event) {
    emit(
      state.copyWith(
        event: some(event),
        status: CubitStatus.success,
      ),
    );
  }

  _showSnackbar(String message) {
    emit(state.copyWith(errorMessage: some(message)));
    emit(state.copyWith(errorMessage: none()));
  }
}
