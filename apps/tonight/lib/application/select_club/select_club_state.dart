part of 'select_club_bloc.dart';

@freezed
class SelectClubState with _$SelectClubState {
  factory SelectClubState({
    required List<WallPhotoVenue> venues,
    required String searchPhrase,
    required bool hasReachedMax,
    required CubitStatus initialStatus,
    required CubitStatus fetchNextPageStatus,
    required CubitStatus filterVenuesStatus,
    required Option<String> snackbarMessage,
    required Option<WallPhotoVenue> selectedVenue,
  }) = _SelectClubState;

  factory SelectClubState.initial() => SelectClubState(
        venues: [],
        searchPhrase: '',
        hasReachedMax: false,
        initialStatus: CubitStatus.initial,
        fetchNextPageStatus: CubitStatus.initial,
        filterVenuesStatus: CubitStatus.initial,
        snackbarMessage: none(),
        selectedVenue: none(),
      );
}
