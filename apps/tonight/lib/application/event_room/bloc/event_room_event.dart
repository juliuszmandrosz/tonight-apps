part of 'event_room_bloc.dart';

@freezed
class EventRoomEvent with _$EventRoomEvent {
  const factory EventRoomEvent.joinedToEvent(String eventId) = _JoinedToEvent;

  const factory EventRoomEvent.leavedFromEvent() = _LeavedFromEvent;
}
