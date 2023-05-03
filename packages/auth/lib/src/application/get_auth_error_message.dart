import 'package:auth/auth.dart';
import 'package:translations/translations.dart';

String getAuthErrorMessage(AuthFailure authFailure) {
  return authFailure.map(
    unexpected: (_) => S().serverError,
    operationNotAllowed: (_) => S().operationNotAllowed,
    accountExists: (_) => S().accountExists,
    invalidCredential: (_) => S().invalidCredential,
    invalidEmail: (_) => S().invalidEmail,
    userDisabled: (_) => S().userDisabled,
    emailInUse: (_) => S().emailAlreadyInUse,
    weakPassword: (_) => S().weakPassword,
    userNotFound: (_) => S().userNotFound,
    wrongPassword: (_) => S().wrongPassword,
    invalidVerificationCode: (_) => S().invalidVerificationCode,
    invalidVerificationId: (_) => S().invalidVerificationId,
    usernameExists: (_) => S().usernameAlreadyInUse,
    canceledByUser: (_) => S().cancelledByUser,
    invalidAccessCode: (_) => S().invalidAccessCode,
    invalidLink: (_) => S().invalidSignInLink,
    unavailable: (_) => S().errorCheckInternetConnection,
  );
}
