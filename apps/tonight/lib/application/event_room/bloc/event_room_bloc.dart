import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/event_room/aggregator/event_room_aggregator.dart';
import 'package:tonight/application/event_room/bloc/event_room_tab.dart';
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
    on<_TabChanged>(_onTabChanged);
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

    final result = await _eventRoomAggregator.joinToRoom(
      eventId: event.eventId,
      event: event.event,
    );

    result.fold(
      (_) => emit(state.copyWith(joinStatus: CubitStatus.failure)),
      (tuple) => emit(
        state.copyWith(
          joinStatus: CubitStatus.success,
          participant: some(tuple.value1),
          event: some(tuple.value2),
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
      eventId: state.event.getOrCrash().id,
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

  FutureOr<void> _onTabChanged(
    _TabChanged event,
    Emitter<EventRoomState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedTab: event.tab,
        previousEvent: some(event),
      ),
    );
  }
}
