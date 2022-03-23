part of 'user_event_favorites_cubit.dart';

@freezed
abstract class UserEventFavoritesState with _$UserEventFavoritesState {
  const UserEventFavoritesState._();

  factory UserEventFavoritesState({
    required List<Event> events,
    required CubitStatus status,
    required int currentVisibleIndex,
  }) = _UserEventFavoritesState;

  factory UserEventFavoritesState.initial() => UserEventFavoritesState(
        events: [],
        currentVisibleIndex: 0,
        status: CubitStatus.initial,
      );
}
