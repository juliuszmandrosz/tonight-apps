part of 'event_room_participants_bloc.dart';

@freezed
class EventRoomParticipantsState with _$EventRoomParticipantsState {
  const factory EventRoomParticipantsState({
    required List<EventRoomParticipant> participants,
    required bool hasReachedMax,
    required CubitStatus fetchParticipantsStatus,
    required CubitStatus nextPageStatus,
    required Option<String> eventId,
  }) = _EventRoomParticipantsState;

  factory EventRoomParticipantsState.initial() => EventRoomParticipantsState(
        participants: [],
        hasReachedMax: false,
        fetchParticipantsStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        eventId: none(),
      );
}
