import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  factory AuthFailure.unexpected() = _Unexpected;

  const factory AuthFailure.operationNotAllowed() = _OperationNotAllowed;

  const factory AuthFailure.accountExists() = _AccountExists;

  const factory AuthFailure.invalidCredential() = _InvalidCredential;

  const factory AuthFailure.invalidEmail() = _InvalidEmail;

  const factory AuthFailure.userDisabled() = _UserDisabled;

  const factory AuthFailure.emailInUse() = _EmailInUse;

  const factory AuthFailure.weakPassword() = _WeakPassword;

  const factory AuthFailure.userNotFound() = _UserNotFound;

  const factory AuthFailure.wrongPassword() = _WrongPassword;

  const factory AuthFailure.invalidVerificationCode() =
      _InvalidVerificationCode;

  const factory AuthFailure.invalidVerificationId() = _InvalidVerificationId;

  const factory AuthFailure.usernameExists() = _UsernameExists;

  const factory AuthFailure.canceledByUser() = _CanceledByUser;

  const factory AuthFailure.invalidAccessCode() = _InvalidAccessCode;

  const factory AuthFailure.invalidLink() = _InvalidLink;

  const factory AuthFailure.unavailable() = _Unavailable;
}
