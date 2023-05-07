part of 'wall_photos_bloc.dart';

@freezed
class WallPhotosState with _$WallPhotosState {
  const factory WallPhotosState({
    required CubitStatus getPhotosStatus,
    required CubitStatus nextPageStatus,
    required List<WallPhoto> photos,
    required bool hasReachedMax,
    required String filterPhrase,
    required Option<WallPhotoFailure> failure,
    required List<String> reportingWallPhotoIds,
    required Option<String> snackbarMessage,
    required WallPhotoFilters wallPhotoFilters,
    required Map<MenuWallPhotoFilter, IFilter> appliedMenuFilters,
  }) = _WallPhotosState;

  factory WallPhotosState.initial() => WallPhotosState(
        getPhotosStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        hasReachedMax: false,
        photos: [],
        filterPhrase: '',
        failure: none(),
        reportingWallPhotoIds: [],
        snackbarMessage: none(),
        wallPhotoFilters: WallPhotoFilters.empty(),
        appliedMenuFilters: {},
      );
}
