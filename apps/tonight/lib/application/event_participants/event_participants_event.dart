part of 'event_participants_bloc.dart';

@freezed
class EventParticipantsEvent with _$EventParticipantsEvent {
  const factory EventParticipantsEvent.participantsFetched(String eventId) =
      _ParticipantsFetched;

  const factory EventParticipantsEvent.nextPageParticipantsFetched() =
      _NextPageParticipantsFetched;
}
