import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'user_account_failure.freezed.dart';

@freezed
class UserAccountFailure with _$UserAccountFailure {
  const factory UserAccountFailure.unexpected() = _Unexpected;

  const factory UserAccountFailure.permissionDenied() = _PermissionDenied;

  const factory UserAccountFailure.usernameExists() = _UsernameExists;

  const factory UserAccountFailure.userNotFound() = _UserNotFound;
}

extension UserAccountFailureX on UserAccountFailure {
  String get message => map(
        unexpected: (_) => S().serverError,
        permissionDenied: (_) => S().operationNotAllowed,
        usernameExists: (_) => S().usernameAlreadyInUse,
        // TODO - add translation
        userNotFound: (_) => 'User not found',
      );
}
