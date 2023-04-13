part of 'add_wall_photo_cubit.dart';

@freezed
class AddWallPhotoState with _$AddWallPhotoState {
  const factory AddWallPhotoState({
    required Option<XFile> photo,
    required CubitStatus status,
    required Option<String> snackbarMessage,
  }) = _AddWallPhotoState;

  factory AddWallPhotoState.initial() => AddWallPhotoState(
        photo: none(),
        status: CubitStatus.initial,
        snackbarMessage: none(),
      );
}
