part of 'user_wall_photo_preview_cubit.dart';

@freezed
class UserWallPhotoPreviewState with _$UserWallPhotoPreviewState {
  const factory UserWallPhotoPreviewState({
    required CubitStatus deletePhotoStatus,
    required CubitStatus sharePhotoStatus,
  }) = _UserWallPhotoPreviewState;

  factory UserWallPhotoPreviewState.initial() =>
      const UserWallPhotoPreviewState(
        deletePhotoStatus: CubitStatus.initial,
        sharePhotoStatus: CubitStatus.initial,
      );
}
