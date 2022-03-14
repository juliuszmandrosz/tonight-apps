import 'package:raver/domain/auth/auth_error_messages.dart';
import 'package:raver/generated/l10n.dart';

final authErrorMessages = {
  accountExists: S().accountExists,
  invalidCredential: S().invalidCredential,
  operationNotAllowed: S().operationNotAllowed,
  invalidEmail: S().invalidEmail,
  userDisabled: S().userDisabled,
  emailInUse: S().emailAlreadyInUse,
  weakPassword: S().weakPassword,
  userNotFound: S().userNotFound,
  wrongPassword: S().wrongPassword,
  invalidVerificationCode: S().invalidVerificationCode,
  invalidVerificationId: S().invalidVerificationId,
  cancelledByUser: S().cancelledByUser,
  serverError: S().serverError,
};
