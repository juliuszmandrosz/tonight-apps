import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_review_failure.freezed.dart';

@freezed
abstract class UserReviewFailure with _$UserReviewFailure {
  const factory UserReviewFailure.unexpected() = _Unexpected;

  const factory UserReviewFailure.permissionDenied() = _PermissionDenied;

  const factory UserReviewFailure.reportExists() = _ReportExists;

  const factory UserReviewFailure.reviewNotFound() = _ReviewNotFound;
}
