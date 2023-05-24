import 'dart:convert';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight_partners/domain/time_tasks/time_task_entity.dart';
import 'package:tonight_partners/domain/time_tasks/time_task_failure.dart';
import 'package:tonight_partners/domain/time_tasks/time_tasks_facade.dart';
import 'package:translations/translations.dart';

part 'scan_qr_cubit.freezed.dart';
part 'scan_qr_state.dart';

class ScanQrCubit extends Cubit<ScanQrState> {
  final TimeTaskFacade _timeTaskFacade;

  ScanQrCubit(this._timeTaskFacade) : super(ScanQrState.initial());

  Future<void> scanTimeTaskReward(String? qrCode) async {
    if (state.status.isLoading()) return;

    if (qrCode == null) {
      _emitInvalidTicketFailure();
      return;
    }

    emit(state.copyWith(status: CubitStatus.loading));

    String wallPhotoId;

    try {
      final jsonMap = _tryGetJsonMapFromQrCode(qrCode);
      wallPhotoId = _tryGetWallPhotoIdFromJsonMap(jsonMap);
    } on FormatException {
      _emitInvalidTicketFailure();
      return;
    }

    final result = await _timeTaskFacade.scanTimeTaskReward(wallPhotoId);

    result.fold(
      (failure) => _emitFailure(failure),
      (tuple) => emit(
        state.copyWith(
          status: CubitStatus.success,
          lastScannedTask: some(tuple.value1),
          lastScannedPhotoUrl: some(tuple.value2),
          errorMessage: none(),
        ),
      ),
    );
  }

  void resetStatus() {
    emit(state.copyWith(status: CubitStatus.initial));
  }

  Map<String, dynamic> _tryGetJsonMapFromQrCode(String qrCode) {
    final timeTaskMap = tryCast<Map<String, dynamic>>(jsonDecode(qrCode));

    if (timeTaskMap == null) throw const FormatException();

    return timeTaskMap;
  }

  String _tryGetWallPhotoIdFromJsonMap(Map<String, dynamic> ticketMap) {
    final photoId = tryCast<String?>(ticketMap['wallPhotoId']);

    if (photoId == null || photoId.isEmpty) throw const FormatException();

    return photoId;
  }

  _emitFailure(TimeTaskFailure failure) {
    emit(
      state.copyWith(
        status: CubitStatus.failure,
        errorMessage: some(failure.message),
      ),
    );
  }

  _emitInvalidTicketFailure() {
    emit(
      state.copyWith(
        status: CubitStatus.failure,
        errorMessage: some(S().invalidQrCode),
      ),
    );
  }
}
