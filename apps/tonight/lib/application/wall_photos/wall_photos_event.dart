part of 'wall_photos_bloc.dart';

@freezed
class WallPhotosEvent with _$WallPhotosEvent {
  const factory WallPhotosEvent.wallPhotosFetched() = _WallPhotosFetched;

  const factory WallPhotosEvent.nextPagePhotosFetched() =
      _NextPagePhotosFetched;
}
