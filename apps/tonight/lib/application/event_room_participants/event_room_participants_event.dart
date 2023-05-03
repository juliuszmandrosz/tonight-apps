part of 'event_room_participants_bloc.dart';

@freezed
class EventRoomParticipantsEvent with _$EventRoomParticipantsEvent {
  const factory EventRoomParticipantsEvent.participantsFetched(String eventId) =
      _ParticipantsFetched;

  const factory EventRoomParticipantsEvent.nextPageParticipantsFetched() =
      _NextPageParticipantsFetched;

  const factory EventRoomParticipantsEvent.participantsRefreshed() =
      _ParticipantsRefreshed;
}
