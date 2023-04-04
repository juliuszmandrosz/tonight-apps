import 'package:freezed_annotation/freezed_annotation.dart';

part 'wall_photo_failure.freezed.dart';

@freezed
class WallPhotoFailure with _$WallPhotoFailure {
  const factory WallPhotoFailure.unexpected() = _Unexpected;

  const factory WallPhotoFailure.permissionDenied() = _PermissionDenied;
}
