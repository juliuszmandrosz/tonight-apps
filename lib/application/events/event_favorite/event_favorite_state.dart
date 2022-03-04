part of 'event_favorite_cubit.dart';

@freezed
class EventFavoriteState with _$EventFavoriteState {
  const factory EventFavoriteState({
    required List<String> favoriteEventIds,
    required Option<EventFailure> failureOption,
    required bool isLoading,
    required bool isChangingFavoriteStatus,
  }) = _EventFavoriteState;

  factory EventFavoriteState.initial() => EventFavoriteState(
        favoriteEventIds: [],
        failureOption: none(),
        isLoading: false,
        isChangingFavoriteStatus: false,
      );
}
