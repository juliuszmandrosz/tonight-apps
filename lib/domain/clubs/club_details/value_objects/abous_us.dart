import 'package:dartz/dartz.dart';
import 'package:raver/domain/core/value_failures.dart';
import 'package:raver/domain/core/value_object.dart';
import 'package:raver/domain/core/value_validators.dart';

class AboutUs extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 1000;

  factory AboutUs(String input) {
    return AboutUs._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const AboutUs._(this.value);
}
