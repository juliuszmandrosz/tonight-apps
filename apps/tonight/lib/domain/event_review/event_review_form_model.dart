import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_review_form_model.freezed.dart';

@freezed
class EventReviewForm with _$EventReviewForm {
  const factory EventReviewForm({
    required String clubId,
    required String userId,
    required String eventId,
    required String username,
    required String eventName,
    required DateTime eventStartDateTime,
    required DateTime eventEndDateTime,
    String? userPictureUrl,
    @Default(0) reviewValue,
    @Default('') reviewContent,
  }) = _EventReviewForm;
}
