import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'add_wall_photo_failure.freezed.dart';

@freezed
class AddWallPhotoFailure with _$AddWallPhotoFailure {
  const factory AddWallPhotoFailure.unexpected() = _Unexpected;

  const factory AddWallPhotoFailure.permissionDenied() = _PermissionDenied;

  const factory AddWallPhotoFailure.cannotUploadPhoto() = _CannotUploadPhoto;

  const factory AddWallPhotoFailure.timeTaskLimitReached() =
      _TimeTaskLimitReached;
}

extension AddWallPhotoFailureX on AddWallPhotoFailure {
  String get message => when(
        unexpected: () => S().serverError,
        permissionDenied: () => S().operationNotAllowed,
        cannotUploadPhoto: () => S().errorAddingPhoto,
        // TODO - add translation
        timeTaskLimitReached: () => 'S().timeTaskLimitReached',
      );
}
