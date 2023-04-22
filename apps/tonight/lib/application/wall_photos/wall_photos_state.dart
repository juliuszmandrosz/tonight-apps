part of 'wall_photos_bloc.dart';

@freezed
class WallPhotosState with _$WallPhotosState {
  const factory WallPhotosState({
    required CubitStatus getPhotosStatus,
    required CubitStatus nextPageStatus,
    required Option<String> errorMessage,
    required List<WallPhoto> photos,
    required bool hasReachedMax,
    required String filterPhrase,
  }) = _WallPhotosState;

  factory WallPhotosState.initial() => WallPhotosState(
        getPhotosStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        errorMessage: none(),
        hasReachedMax: false,
        photos: [],
        filterPhrase: '',
      );
}
