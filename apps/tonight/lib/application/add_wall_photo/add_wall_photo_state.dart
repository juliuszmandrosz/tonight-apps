part of 'add_wall_photo_cubit.dart';

@freezed
class AddWallPhotoState with _$AddWallPhotoState {
  const factory AddWallPhotoState({
    required Option<File> photo,
    required List<Club> nearestClubs,
    required List<Event> liveEventsFromSelectedClub,
    required Option<LatLng> userLocation,
    required CubitStatus addPhotoStatus,
    required CubitStatus fetchNearestClubStatus,
    required CubitStatus fetchLiveEventsStatus,
    required Option<String> snackbarMessage,
    required Option<Club> selectedClub,
    required Option<Event> selectedEvent,
  }) = _AddWallPhotoState;

  factory AddWallPhotoState.initial() => AddWallPhotoState(
        photo: none(),
        nearestClubs: [],
        liveEventsFromSelectedClub: [],
        userLocation: none(),
        addPhotoStatus: CubitStatus.initial,
        fetchNearestClubStatus: CubitStatus.initial,
        fetchLiveEventsStatus: CubitStatus.initial,
        snackbarMessage: none(),
        selectedClub: none(),
        selectedEvent: none(),
      );
}
