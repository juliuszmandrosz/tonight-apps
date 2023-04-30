part of 'event_photos_bloc.dart';

@freezed
class EventPhotosState with _$EventPhotosState {
  const EventPhotosState._();

  const factory EventPhotosState({
    required CubitStatus getPhotosStatus,
    required CubitStatus nextPageStatus,
    required Option<Event> event,
    required List<WallPhoto> photos,
    required bool hasReachedMax,
  }) = _EventPhotosState;

  factory EventPhotosState.initial() => EventPhotosState(
        getPhotosStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        event: none(),
        photos: [],
        hasReachedMax: false,
      );
}
