import 'package:dartz/dartz.dart';
import 'package:raver/domain/clubs/club_value_failures.dart';

import 'value_failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  }

  return left(ValueFailure.exceedingLength(
      failedValue: input, maxStringLength: maxLength));
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input != '') {
    return right(input);
  }

  return left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<double>, double> validateReviewAvg(double input) {
  if (input < 1) {
    return left(ValueFailure.clubs(
        ClubValueFailure.invalidReviewAvg(failedValue: input)));
  }
  return right(input);
}

