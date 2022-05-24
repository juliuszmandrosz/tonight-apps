import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_review_failure.freezed.dart';

@freezed
class EventReviewFailure with _$EventReviewFailure {
  const factory EventReviewFailure.unexpected() = _Unexpected;
}
