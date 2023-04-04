import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_wall_failure.freezed.dart';

@freezed
class PhotoWallFailure with _$PhotoWallFailure {
  const factory PhotoWallFailure.unexpected() = _Unexpected;

  const factory PhotoWallFailure.permissionDenied() = _PermissionDenied;
}
