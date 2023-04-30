part of 'event_room_bloc.dart';

@freezed
class EventRoomState with _$EventRoomState {
  const factory EventRoomState({
    required CubitStatus joinStatus,
    required CubitStatus leaveStatus,
    required Option<Participant> participant,
    required Option<Event> event,
    required Option<EventRoomEvent> previousEvent,
    required Option<String> snackbarMessage,
    required EventRoomTab selectedTab,
  }) = _EventRoomState;

  factory EventRoomState.initial() => EventRoomState(
        joinStatus: CubitStatus.initial,
        leaveStatus: CubitStatus.initial,
        participant: none(),
        event: none(),
        previousEvent: none(),
        snackbarMessage: none(),
        selectedTab: EventRoomTab.chat,
      );
}
