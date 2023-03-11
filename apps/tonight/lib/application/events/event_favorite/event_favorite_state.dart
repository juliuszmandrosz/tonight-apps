part of 'event_favorite_cubit.dart';

@freezed
class EventFavoriteState with _$EventFavoriteState {
  const factory EventFavoriteState({
    required List<Event> favoriteEvents,
    required CubitStatus status,
    required bool isChangingFavoriteStatus,
    required Option<String> snackbarMessage,
  }) = _EventFavoriteState;

  factory EventFavoriteState.initial() => EventFavoriteState(
        favoriteEvents: [],
        status: CubitStatus.initial,
        isChangingFavoriteStatus: false,
        snackbarMessage: none(),
      );
}
