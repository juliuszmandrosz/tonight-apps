part of 'club_photos_bloc.dart';

@freezed
class ClubPhotosEvent with _$ClubPhotosEvent {
  const factory ClubPhotosEvent.photosFetched(String clubId) =
      _ClubPhotosFetched;

  const factory ClubPhotosEvent.nextPagePhotosFetched({
    required String clubId,
    String? nextPageToken,
  }) = _ClubPhotosNextPageFetched;
}
