import 'package:dartz/dartz.dart';
import 'package:raver/domain/core/failures.dart';
import 'package:raver/domain/core/value_object.dart';

class ReviewCount extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory ReviewCount(int reviewCount) {
    return ReviewCount._(right(reviewCount));
  }

  const ReviewCount._(this.value);
}
