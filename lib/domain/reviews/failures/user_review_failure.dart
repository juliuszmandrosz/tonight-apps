import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_review_failure.freezed.dart';

@freezed
abstract class UserReviewFailure with _$UserReviewFailure {
  const factory UserReviewFailure.unexpected() = _UserReviewFailure;
}