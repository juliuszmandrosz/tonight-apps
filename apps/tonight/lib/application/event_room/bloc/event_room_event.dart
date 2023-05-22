part of 'event_room_bloc.dart';

@freezed
class EventRoomEvent with _$EventRoomEvent {
  const factory EventRoomEvent.joinedToEvent({
    required String eventId,
    Event? event,
  }) = _JoinedToEvent;

  const factory EventRoomEvent.leavedFromEvent() = _LeavedFromEvent;

  const factory EventRoomEvent.tabChanged(EventRoomTab tab) = _TabChanged;
}
