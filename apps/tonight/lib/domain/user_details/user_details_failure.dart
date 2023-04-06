import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_failure.freezed.dart';

@freezed
class UserDetailsFailure with _$UserDetailsFailure {
  const factory UserDetailsFailure.unexpected() = _Unexpected;

  const factory UserDetailsFailure.permissionDenied() = _PermissionDenied;
}
