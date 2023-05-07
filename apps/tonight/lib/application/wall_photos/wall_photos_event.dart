part of 'wall_photos_bloc.dart';

@freezed
class WallPhotosEvent with _$WallPhotosEvent {
  const factory WallPhotosEvent.wallPhotosFetched(Option<LatLng> userLocation) =
      _WallPhotosFetched;

  const factory WallPhotosEvent.nextPagePhotosFetched() =
      _NextPagePhotosFetched;

  const factory WallPhotosEvent.wallPhotosRefreshed() = _WallPhotosRefreshed;

  const factory WallPhotosEvent.wallPhotoReported(WallPhoto photo) =
      _WallPhotoReported;

  const factory WallPhotosEvent.menuFiltersApplied({
    required WallPhotoFilters filters,
    required Map<MenuWallPhotoFilter, IFilter> appliedFilters,
  }) = _MenuFiltersApplied;

  const factory WallPhotosEvent.menuFilterRemoved(MenuWallPhotoFilter filter) =
      _MenuFilterRemoved;
}
