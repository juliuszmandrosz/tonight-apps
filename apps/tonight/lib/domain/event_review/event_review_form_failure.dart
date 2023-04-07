import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_review_form_failure.freezed.dart';

@freezed
class EventReviewFormFailure with _$EventReviewFormFailure {
  const factory EventReviewFormFailure.unexpected() = _Unexpected;
}
