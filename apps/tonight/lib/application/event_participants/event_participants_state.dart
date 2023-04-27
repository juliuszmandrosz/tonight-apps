part of 'event_participants_bloc.dart';

@freezed
class EventParticipantsState with _$EventParticipantsState {
  const factory EventParticipantsState({
    required List<EventParticipant> participants,
    required bool hasReachedMax,
    required CubitStatus fetchParticipantsStatus,
    required CubitStatus nextPageStatus,
    required Option<String> eventId,
  }) = _EventParticipantsState;

  factory EventParticipantsState.initial() => EventParticipantsState(
        participants: [],
        hasReachedMax: false,
        fetchParticipantsStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        eventId: none(),
      );
}
