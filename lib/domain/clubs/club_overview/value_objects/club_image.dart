import 'package:dartz/dartz.dart';
import 'package:raver/domain/core/value_failures.dart';
import 'package:raver/domain/core/value_object.dart';

class ClubImageUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ClubImageUrl(String image) {
    return ClubImageUrl._(right(image));
  }

  const ClubImageUrl._(this.value);
}
