import 'package:dartz/dartz.dart';
import 'package:raver/domain/auth/auth_failure.dart';

class AuthFailureMessages {
  static _getFailureMessage(AuthFailure failure) {
    switch (failure.toString()) {
      case 'AuthFailure.cancelledByUser()':
        return 'Cancelled';
      case 'AuthFailure.serverError()':
        return 'Server error';
      case 'AuthFailure.emailAlreadyInUse()':
        return 'Email already in use';
      case 'AuthFailure.invalidEmailAndPasswordCombination()':
        return 'Invalid email or password';
      default:
        return 'Authentication Failure';
    }
  }

  static Option<String> getFailureMessageOrNone(
      Either<AuthFailure, Unit>? failureOrSuccess) {
    if (failureOrSuccess == null) return none();
    return failureOrSuccess.fold(
        (l) => some(_getFailureMessage(l)), (r) => none());
  }
}
