import 'package:dartz/dartz.dart';
import 'package:raver/domain/core/value_failures.dart';

import 'club_value_failures.dart';

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const phoneNumberPattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';

  if (RegExp(phoneNumberPattern).hasMatch(input)) {
    return right(input);
  }

  return left(ValueFailure.clubs(
      ClubValueFailure.invalidPhoneNumber(failedValue: input)));
}
