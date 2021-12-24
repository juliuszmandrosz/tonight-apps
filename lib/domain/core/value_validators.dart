import 'package:dartz/dartz.dart';
import 'package:raver/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  }

  return left(
    ValueFailure.auth(
      AuthValueFailure.invalidEmail(failedValue: input),
    ),
  );
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  }

  return left(
    ValueFailure.auth(
      AuthValueFailure.invalidEmail(failedValue: input),
    ),
  );
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  }

  return left(ValueFailure.clubs(ClubValueFailure.exceedingLength(
      failedValue: input, maxStringLength: maxLength)));
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input != '') {
    return right(input);
  }

  return left(ValueFailure.clubs(ClubValueFailure.empty(failedValue: input)));
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const phoneNumberPattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';

  if (RegExp(phoneNumberPattern).hasMatch(input)) {
    return right(input);
  }

  return left(ValueFailure.clubs(
      ClubValueFailure.invalidPhoneNumber(failedValue: input)));
}
