part of 'event_room_leaderboard_bloc.dart';

@freezed
class EventRoomLeaderboardEvent with _$EventRoomLeaderboardEvent {
  const factory EventRoomLeaderboardEvent.initialized(String eventId) =
      _Initialized;

  const factory EventRoomLeaderboardEvent.nextPageLeaderboardFetched() =
      _NextPageLeaderboardFetched;

  const factory EventRoomLeaderboardEvent.leaderboardRefreshed() =
      _LeaderboardRefreshed;

  const factory EventRoomLeaderboardEvent.permissionsRequested() =
      _PermissionsRequested;
}
