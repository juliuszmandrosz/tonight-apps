import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

part 'scanner_cubit.freezed.dart';

part 'scanner_state.dart';

class ScannerCubit extends Cubit<ScannerState> {
  final SelectorTicketFacade _ticketFacade;
  final CurrentEventCubit _currentEventCubit;

  ScannerCubit({
    required SelectorTicketFacade ticketFacade,
    required CurrentEventCubit currentEventCubit,
  })  : _ticketFacade = ticketFacade,
        _currentEventCubit = currentEventCubit,
        super(ScannerState.initial());

  Future<void> scanTicket(String? ticketQrCode) async {
    if (ticketQrCode == null) {
      _emitInvalidTicketFailure();
      return;
    }

    emit(state.copyWith(status: CubitStatus.loading));

    String ticketId;
    String userId;

    try {
      final ticketMap = _tryGetJsonMapFromQrCode(ticketQrCode);
      ticketId = _tryGetTicketIdFromTicketJsonMap(ticketMap);
      userId = _tryGetUserIdFromTicketJsonMap(ticketMap);
    } on FormatException {
      _emitInvalidTicketFailure();
      return;
    }

    final currentEvent = _currentEventCubit.state.currentEvent.getOrCrash();

    final failureOrSuccess =
        await _ticketFacade.scanTicket(ticketId, currentEvent.id, userId);

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (ticket) => emit(
        state.copyWith(
          status: CubitStatus.success,
          lastScannedTicket: some(ticket),
          errorMessage: none(),
        ),
      ),
    );
  }

  void resetStatus() {
    emit(state.copyWith(status: CubitStatus.initial));
  }

  void _emitInvalidTicketFailure() {
    emit(
      state.copyWith(
        status: CubitStatus.failure,
        errorMessage: some(S().invalidQrCode),
      ),
    );
  }

  _emitFailure(TicketFailure failure) {
    final message = failure.map(
      unexpected: (_) => S().serverError,
      invalidTicket: (_) => S().invalidQrCode,
      ticketExpired: (_) => S().ticketExpired,
      ticketForAnotherEvent: (_) => S().ticketForAnotherEvent,
      returnTimeIsOver: (_) => S().returnTimeIsOver,
    );

    emit(
      state.copyWith(
        status: CubitStatus.failure,
        errorMessage: some(message),
      ),
    );
  }

  Map<String, dynamic> _tryGetJsonMapFromQrCode(String qrCode) {
    final ticketMap = tryCast<Map<String, dynamic>>(jsonDecode(qrCode));

    if (ticketMap == null) throw const FormatException();

    return ticketMap;
  }

  String _tryGetTicketIdFromTicketJsonMap(Map<String, dynamic> ticketMap) {
    final ticketId = tryCast<String>(ticketMap['ticketId']);

    if (ticketId == null) throw const FormatException();

    return ticketId;
  }

  String _tryGetUserIdFromTicketJsonMap(Map<String, dynamic> ticketMap) {
    final userId = tryCast<String?>(ticketMap['userId']);

    if (userId == null) throw const FormatException();

    return userId;
  }
}
