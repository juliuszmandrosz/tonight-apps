import 'package:dartz/dartz.dart';
import 'package:raver/domain/auth/auth_value_validators.dart';
import 'package:raver/domain/core/value_failures.dart';
import 'package:raver/domain/core/value_object.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}
