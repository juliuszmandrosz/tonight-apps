import 'package:dartz/dartz.dart';
import 'package:raver/domain/clubs/club_value_validators.dart';
import 'package:raver/domain/core/value_failures.dart';
import 'package:raver/domain/core/value_object.dart';

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(validatePhoneNumber(input));
  }

  const PhoneNumber._(this.value);
}
