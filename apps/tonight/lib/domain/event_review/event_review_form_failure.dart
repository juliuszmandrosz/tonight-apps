import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'event_review_form_failure.freezed.dart';

@freezed
class EventReviewFormFailure with _$EventReviewFormFailure {
  const factory EventReviewFormFailure.unexpected() = _Unexpected;
}

extension EventReviewFormFailureX on EventReviewFormFailure {
  String get message {
    return when(
      unexpected: () => S().serverError,
    );
  }
}
