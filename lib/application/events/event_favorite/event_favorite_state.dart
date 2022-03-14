part of 'event_favorite_cubit.dart';

@freezed
class EventFavoriteState with _$EventFavoriteState {
  const factory EventFavoriteState({
    required List<String> favoriteEventIds,
    required CubitStatus status,
    required bool isChangingFavoriteStatus,
    required Option<String> errorMessage,
  }) = _EventFavoriteState;

  factory EventFavoriteState.initial() => EventFavoriteState(
        favoriteEventIds: [],
        status: CubitStatus.initial,
        isChangingFavoriteStatus: false,
        errorMessage: none(),
      );
}
