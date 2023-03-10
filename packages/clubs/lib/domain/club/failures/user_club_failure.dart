import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_club_failure.freezed.dart';

@freezed
abstract class UserClubFailure with _$UserClubFailure {
  const factory UserClubFailure.unexpected() = _Unexpected;

  const factory UserClubFailure.noConnection() = _NoConnection;

  const factory UserClubFailure.permissionDenied() = _PermissionDenied;
}
