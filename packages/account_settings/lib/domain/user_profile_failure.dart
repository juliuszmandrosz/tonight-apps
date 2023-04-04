import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'user_profile_failure.freezed.dart';

@freezed
class UserProfileFailure with _$UserProfileFailure {
  const factory UserProfileFailure.unexpected() = _Unexpected;

  const factory UserProfileFailure.permissionDenied() = _PermissionDenied;

  const factory UserProfileFailure.usernameExists() = _UsernameExists;
}

extension UserProfileFailureX on UserProfileFailure {
  String get message => map(
        unexpected: (_) => S().serverError,
        permissionDenied: (_) => S().operationNotAllowed,
        usernameExists: (_) => S().usernameAlreadyInUse,
      );
}
