part of 'event_photos_bloc.dart';

@freezed
class EventPhotosEvent with _$EventPhotosEvent {
  const factory EventPhotosEvent.photosFetched(Event event) = _PhotosFetched;

  const factory EventPhotosEvent.photosRefreshed() = _PhotosRefreshed;

  const factory EventPhotosEvent.nextPagePhotosFetched() =
  _NextPagePhotosFetched;

  const factory EventPhotosEvent.photoAdded(WallPhoto photo) = _PhotoAdded;

  const factory EventPhotosEvent.photoReported(String photoId) = _PhotoReported;
}
