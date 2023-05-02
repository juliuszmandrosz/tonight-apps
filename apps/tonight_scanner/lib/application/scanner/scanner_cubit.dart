import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rewards/rewards.dart';
import 'package:tickets/tickets.dart';
import 'package:tonight_scanner/application/current_event/current_event_cubit.dart';
import 'package:tonight_scanner/application/selector_club/selector_club_cubit.dart';
import 'package:translations/raver_translations.dart';

part 'scanner_cubit.freezed.dart';

part 'scanner_state.dart';

class ScannerCubit extends Cubit<ScannerState> {
  final SelectorTicketFacade _ticketFacade;
  final CurrentEventCubit _currentEventCubit;
  final SelectorClubCubit _selectorClubCubit;

  ScannerCubit({
    required SelectorTicketFacade ticketFacade,
    required CurrentEventCubit currentEventCubit,
    required SelectorClubCubit selectorClubCubit,
  })  : _ticketFacade = ticketFacade,
        _currentEventCubit = currentEventCubit,
        _selectorClubCubit = selectorClubCubit,
        super(ScannerState.initial());

  Future<void> scanTicket(String? ticketQrCode) async {
    if (state.status.isLoading()) return;

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
      (result) => emit(
        state.copyWith(
          status: CubitStatus.success,
          lastScannedTicket: some(result.value1),
          userRewards: _getUserRewards(result.value2),
          errorMessage: none(),
        ),
      ),
    );
  }

  void resetStatus() {
    emit(state.copyWith(status: CubitStatus.initial));
  }

  List<Reward> _getUserRewards(int attendance) {
    final clubRewards = _selectorClubCubit.state.rewards;
    return clubRewards
        .where((reward) => attendance >= reward.requiredEntries)
        .toList();
  }

  void _emitInvalidTicketFailure() {
    emit(
      state.copyWith(
        status: CubitStatus.failure,
        errorMessage: some(S().invalidQrCode),
      ),
    );
  }

  _emitFailure(SelectorTicketFailure failure) {
    final message = failure.map(
      unexpected: (_) => S().serverError,
      invalidTicket: (_) => S().invalidTicket,
      ticketExpired: (_) => S().ticketExpired,
      ticketForAnotherEvent: (_) => S().ticketForAnotherEvent,
      ticketReturned: (_) => S().ticketReturned,
      permissionDenied: (_) => S().operationNotAllowed,
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

    if (ticketId == null || ticketId.isEmpty) throw const FormatException();

    return ticketId;
  }

  String _tryGetUserIdFromTicketJsonMap(Map<String, dynamic> ticketMap) {
    final userId = tryCast<String?>(ticketMap['userId']);

    if (userId == null || userId.isEmpty) throw const FormatException();

    return userId;
  }
}
