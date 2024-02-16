part of 'artists_cubit.dart';

@freezed
class ArtistsState with _$ArtistsState {
  const factory ArtistsState({
    required CubitStatus getArtistsStatus,
    required List<Artist> artists,
    required Option<String> snackbarMessage,
  }) = _ArtistsState;

  factory ArtistsState.initial() => ArtistsState(
        getArtistsStatus: CubitStatus.initial,
        artists: [],
        snackbarMessage: none(),
      );
}
