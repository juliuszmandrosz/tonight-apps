import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'wall_photo_failure.freezed.dart';

@freezed
class WallPhotoFailure with _$WallPhotoFailure {
  const factory WallPhotoFailure.unexpected() = _Unexpected;

  const factory WallPhotoFailure.permissionDenied() = _PermissionDenied;
}

extension WallPhotoFailureX on WallPhotoFailure {
  String get message => when(
        unexpected: () => S().serverError,
        permissionDenied: () => S().operationNotAllowed,
      );
}
