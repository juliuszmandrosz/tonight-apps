import 'package:dartz/dartz.dart';
import 'package:raver/domain/core/failures.dart';
import 'package:raver/domain/core/value_object.dart';
import 'package:raver/domain/core/value_validators.dart';

class ReviewAvg extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory ReviewAvg(double reviewAvg) {
    return ReviewAvg._(validateReviewAvg(reviewAvg));
  }

  const ReviewAvg._(this.value);
}
