import 'package:dartz/dartz.dart';
import 'package:raver/domain/core/failures.dart';
import 'package:raver/domain/core/value_object.dart';
import 'package:raver/domain/core/value_validators.dart';

class ClubName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 100;

  factory ClubName(String input) {
    assert(input != null);
    return ClubName._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const ClubName._(this.value);
}
