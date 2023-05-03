import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/event_room_participants/models/event_room_participant_model.dart';
import 'package:tonight/domain/participants/participant_facade.dart';

part 'event_room_participants_bloc.freezed.dart';
part 'event_room_participants_event.dart';
part 'event_room_participants_state.dart';

const _pageSize = 20;

class EventRoomParticipantsBloc
    extends Bloc<EventRoomParticipantsEvent, EventRoomParticipantsState> {
  final ParticipantFacade _participantFacade;

  EventRoomParticipantsBloc(this._participantFacade)
      : super(EventRoomParticipantsState.initial()) {
    on<_ParticipantsFetched>(_onParticipantsFetched);
    on<_NextPageParticipantsFetched>(
      _onNextPageParticipantsFetched,
      transformer: throttleDroppable(),
    );
    on<_ParticipantsRefreshed>(_onParticipantsRefreshed);
  }

  FutureOr<void> _onParticipantsFetched(
    _ParticipantsFetched event,
    Emitter<EventRoomParticipantsState> emit,
  ) async {
    emit(state.copyWith(fetchParticipantsStatus: CubitStatus.loading));
    final result = await _participantFacade.fetchParticipants(
      eventId: event.eventId,
      pageSize: _pageSize,
    );
    emit(state.copyWith(eventId: some(event.eventId)));
    result.fold(
      (_) => emit(state.copyWith(fetchParticipantsStatus: CubitStatus.failure)),
      (participants) => emit(
        state.copyWith(
          fetchParticipantsStatus: CubitStatus.success,
          participants: participants
              .map((p) => EventRoomParticipant.fromDomain(p))
              .toList(),
          hasReachedMax: participants.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageParticipantsFetched(
    _NextPageParticipantsFetched event,
    Emitter<EventRoomParticipantsState> emit,
  ) async {
    if (state.hasReachedMax || state.participants.isEmpty) return;
    emit(state.copyWith(nextPageStatus: CubitStatus.loading));
    final result = await _participantFacade.fetchParticipants(
      eventId: state.eventId.getOrCrash(),
      pageSize: _pageSize,
      lastParticipant: state.participants.last.toDomain(),
    );
    result.fold(
      (_) => emit(state.copyWith(nextPageStatus: CubitStatus.failure)),
      (participants) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          participants: [
            ...state.participants,
            ...participants.map((p) => EventRoomParticipant.fromDomain(p)),
          ],
          hasReachedMax: participants.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onParticipantsRefreshed(
    _ParticipantsRefreshed event,
    Emitter<EventRoomParticipantsState> emit,
  ) async {
    emit(state.copyWith(fetchParticipantsStatus: CubitStatus.loading));
    final result = await _participantFacade.fetchParticipants(
      eventId: state.eventId.getOrCrash(),
      pageSize: _pageSize,
    );
    result.fold(
      (_) => emit(state.copyWith(fetchParticipantsStatus: CubitStatus.failure)),
      (participants) => emit(
        state.copyWith(
          fetchParticipantsStatus: CubitStatus.success,
          participants: participants
              .map((p) => EventRoomParticipant.fromDomain(p))
              .toList(),
          hasReachedMax: participants.length < _pageSize,
        ),
      ),
    );
  }
}
