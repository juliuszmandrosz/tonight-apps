import 'package:raver_auth/raver_auth.dart';
import 'package:raver_translations/raver_translations.dart';

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
  invalidAccessCode: S().invalidAccessCode,
  invalidLink: S().invalidSignInLink,
  unavailable: S().errorCheckInternetConnection,
  usernameExists: S().usernameAlreadyInUse,
};
