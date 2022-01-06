import 'package:dartz/dartz.dart';
import 'package:raver/domain/core/failures.dart';
import 'package:raver/domain/core/value_object.dart';
import 'package:raver/domain/core/value_validators.dart';

class AddressString extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory AddressString(String addressString) {
    return AddressString._(validateStringNotEmpty(addressString));
  }

  const AddressString._(this.value);
}
