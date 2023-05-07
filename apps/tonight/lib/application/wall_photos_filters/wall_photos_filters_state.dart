part of 'wall_photos_filters_cubit.dart';

@freezed
class WallPhotosFiltersState with _$WallPhotosFiltersState {
  const factory WallPhotosFiltersState({
    required WallPhotoFilters filters,
    required Map<MenuWallPhotoFilter, IFilter> appliedFilters,
    required bool isSubmitting,
    required Option<String> snackbarMessage,
  }) = _WallPhotosFiltersState;

  factory WallPhotosFiltersState.initial() => WallPhotosFiltersState(
        filters: WallPhotoFilters.empty(),
        appliedFilters: {},
        isSubmitting: false,
        snackbarMessage: none(),
      );
}
