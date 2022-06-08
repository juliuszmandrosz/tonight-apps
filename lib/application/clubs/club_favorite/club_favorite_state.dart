part of 'club_favorite_cubit.dart';

@freezed
class ClubFavoriteState with _$ClubFavoriteState {
  const factory ClubFavoriteState({
    required List<Club> favoriteClubs,
    required CubitStatus status,
    required bool isChangingFavoriteStatus,
    required Option<String> snackbarMessage,
  }) = _ClubFavoriteState;

  factory ClubFavoriteState.initial() => ClubFavoriteState(
        favoriteClubs: [],
        status: CubitStatus.initial,
        isChangingFavoriteStatus: false,
        snackbarMessage: none(),
      );
}
