part of 'select_club_cubit.dart';

@freezed
class SelectClubState with _$SelectClubState {
  factory SelectClubState({
    required List<Club> clubs,
    required Option<LatLng> userLocation,
    required bool hasReachedMax,
    required CubitStatus initialStatus,
    required CubitStatus fetchNextPageStatus,
    required CubitStatus filterClubsStatus,
    required Option<String> snackbarMessage,
    required Option<Club> selectedClub,
  }) = _SelectClubState;

  factory SelectClubState.initial() => SelectClubState(
        clubs: [],
        userLocation: none(),
        hasReachedMax: false,
        initialStatus: CubitStatus.initial,
        fetchNextPageStatus: CubitStatus.initial,
        filterClubsStatus: CubitStatus.initial,
        snackbarMessage: none(),
        selectedClub: none(),
      );
}
