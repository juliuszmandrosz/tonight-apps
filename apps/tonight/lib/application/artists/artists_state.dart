part of 'artists_cubit.dart';

@freezed
class ArtistsState with _$ArtistsState {
  const factory ArtistsState({
    required ArtistFilters filters,
    required CubitStatus getArtistsStatus,
    required List<Artist> artists,
    required Option<String> snackbarMessage,
    required Option<ArtistFailure> failure,
  }) = _ArtistsState;

  factory ArtistsState.initial() => ArtistsState(
        filters: ArtistFilters.empty(),
        getArtistsStatus: CubitStatus.initial,
        artists: [],
        snackbarMessage: none(),
        failure: none(),
      );
}
