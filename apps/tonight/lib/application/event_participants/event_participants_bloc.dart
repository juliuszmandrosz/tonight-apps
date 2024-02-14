import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/dashboard/models/event_participant_model.dart';
import 'package:tonight/domain/participants/participant_facade.dart';

part 'event_participants_bloc.freezed.dart';
part 'event_participants_event.dart';
part 'event_participants_state.dart';

const _pageSize = 20;

class EventParticipantsBloc
    extends Bloc<EventParticipantsEvent, EventParticipantsState> {
  final ParticipantFacade _participantFacade;

  EventParticipantsBloc(this._participantFacade)
      : super(EventParticipantsState.initial()) {
    on<_ParticipantsFetched>(_onParticipantsFetched);
    on<_NextPageParticipantsFetched>(
      _onNextPageParticipantsFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onParticipantsFetched(
    _ParticipantsFetched event,
    Emitter<EventParticipantsState> emit,
  ) async {
    emit(state.copyWith(fetchParticipantsStatus: CubitStatus.loading));
    final result = await _participantFacade.fetchParticipants(
      eventId: event.eventId,
      pageSize: _pageSize,
    );
    result.fold(
      (_) => emit(state.copyWith(fetchParticipantsStatus: CubitStatus.failure)),
      (participants) => emit(
        state.copyWith(
          fetchParticipantsStatus: CubitStatus.success,
          participants:
              participants.map((p) => EventParticipant.fromDomain(p)).toList(),
          eventId: some(event.eventId),
          hasReachedMax: participants.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageParticipantsFetched(
    _NextPageParticipantsFetched event,
    Emitter<EventParticipantsState> emit,
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
            ...participants.map((p) => EventParticipant.fromDomain(p)),
          ],
          hasReachedMax: participants.length < _pageSize,
        ),
      ),
    );
  }
}
