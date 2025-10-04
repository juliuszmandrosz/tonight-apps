part of 'event_room_leaderboard_bloc.dart';

@freezed
class EventRoomLeaderboardState with _$EventRoomLeaderboardState {
  const factory EventRoomLeaderboardState({
    required CubitStatus initialStatus,
    required CubitStatus refreshLeaderboardStatus,
    required CubitStatus nextPageStatus,
    required CubitStatus permissionsStatus,
    required Option<Participant> currentUser,
    required List<Participant> participants,
    required bool hasReachedMax,
    required Option<Event> event,
    required bool permissionsGranted,
  }) = _EventRoomLeaderboardState;

  factory EventRoomLeaderboardState.initial() => EventRoomLeaderboardState(
        initialStatus: CubitStatus.initial,
        refreshLeaderboardStatus: CubitStatus.success,
        nextPageStatus: CubitStatus.initial,
        permissionsStatus: CubitStatus.initial,
        currentUser: none(),
        participants: [],
        event: none(),
        hasReachedMax: false,
        permissionsGranted: false,
      );
}
