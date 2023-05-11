part of 'add_wall_photo_cubit.dart';

@freezed
class AddWallPhotoState with _$AddWallPhotoState {
  const factory AddWallPhotoState({
    required Option<File> photo,
    required bool isSelfie,
    required List<WallPhotoVenue> nearestVenues,
    required List<Event> liveEventsFromSelectedClub,
    required Option<LatLng> userLocation,
    required CubitStatus addPhotoStatus,
    required CubitStatus fetchNearestClubStatus,
    required CubitStatus fetchLiveEventsStatus,
    required Option<String> snackbarMessage,
    required Option<WallPhotoVenue> selectedVenue,
    required Option<Event> selectedEvent,
    required Option<Event> initialEvent,
    required Option<TimeTask> timeTask,
    required Option<WallPhoto> result,
  }) = _AddWallPhotoState;

  factory AddWallPhotoState.initial() => AddWallPhotoState(
        photo: none(),
        isSelfie: true,
        nearestVenues: [],
        liveEventsFromSelectedClub: [],
        userLocation: none(),
        addPhotoStatus: CubitStatus.initial,
        fetchNearestClubStatus: CubitStatus.initial,
        fetchLiveEventsStatus: CubitStatus.initial,
        snackbarMessage: none(),
        selectedVenue: none(),
        selectedEvent: none(),
        initialEvent: none(),
        timeTask: none(),
        result: none(),
      );
}
