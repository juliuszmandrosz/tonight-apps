import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/event_room/aggregator/event_room_aggregator.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:translations/translations.dart';

part 'event_room_bloc.freezed.dart';
part 'event_room_event.dart';
part 'event_room_state.dart';

class EventRoomBloc extends Bloc<EventRoomEvent, EventRoomState> {
  final EventRoomAggregator _eventRoomAggregator;

  EventRoomBloc(this._eventRoomAggregator) : super(EventRoomState.initial()) {
    on<_JoinedToEvent>(_onJoinedToEvent);
    on<_LeavedFromEvent>(_onLeavedFromEvent);
  }

  FutureOr<void> _onJoinedToEvent(
    _JoinedToEvent event,
    Emitter<EventRoomState> emit,
  ) async {
    emit(
      state.copyWith(
        joinStatus: CubitStatus.loading,
        previousEvent: some(event),
      ),
    );

    final result = await _eventRoomAggregator.joinToRoom(event.eventId);

    result.fold(
      (_) => emit(state.copyWith(joinStatus: CubitStatus.failure)),
      (participant) => emit(
        state.copyWith(
          joinStatus: CubitStatus.success,
          eventId: some(event.eventId),
          participant: some(participant),
        ),
      ),
    );
  }

  FutureOr<void> _onLeavedFromEvent(
    _LeavedFromEvent event,
    Emitter<EventRoomState> emit,
  ) async {
    emit(
      state.copyWith(
        leaveStatus: CubitStatus.loading,
        previousEvent: some(event),
      ),
    );

    final result = await _eventRoomAggregator.leaveRoom(
      eventId: state.eventId.getOrCrash(),
      participant: state.participant.getOrCrash(),
    );

    result.fold(
      (_) {
        emit(
          state.copyWith(
            leaveStatus: CubitStatus.failure,
            snackbarMessage: some(S().serverError),
          ),
        );
        emit(state.copyWith(snackbarMessage: none()));
      },
      (_) => emit(
        state.copyWith(leaveStatus: CubitStatus.success),
      ),
    );
  }
}
