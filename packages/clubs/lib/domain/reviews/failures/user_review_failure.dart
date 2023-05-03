import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'user_review_failure.freezed.dart';

@freezed
abstract class UserReviewFailure with _$UserReviewFailure {
  const factory UserReviewFailure.unexpected() = _Unexpected;

  const factory UserReviewFailure.permissionDenied() = _PermissionDenied;

  const factory UserReviewFailure.reportExists() = _ReportExists;

  const factory UserReviewFailure.reviewNotFound() = _ReviewNotFound;
}

extension UserReviewFailureX on UserReviewFailure {
  String get message {
    return map(
      unexpected: (_) => S().errorReportingReview,
      permissionDenied: (_) => S().operationNotAllowed,
      reportExists: (_) => S().reviewAlreadyReported,
      reviewNotFound: (_) => S().reviewNotFound,
    );
  }
}
