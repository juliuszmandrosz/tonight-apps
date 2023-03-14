import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:events/domain/domain.dart';

part 'event_review_dto.freezed.dart';

part 'event_review_dto.g.dart';

@freezed
class EventReviewDto with _$EventReviewDto {
  const EventReviewDto._();

  @JsonSerializable(explicitToJson: true)
  const factory EventReviewDto({
    @JsonKey(ignore: true) String? eventId,
    @Default(0) int reviewQuantity,
    @Default(0) double reviewAvg,
  }) = _EventReviewDto;

  factory EventReviewDto.fromDomain(EventReview eventReview) {
    return EventReviewDto(
      eventId: eventReview.eventId,
      reviewQuantity: eventReview.reviewQuantity,
      reviewAvg: eventReview.reviewAvg,
    );
  }

  factory EventReviewDto.fromJson(Map<String, dynamic> json) =>
      _$EventReviewDtoFromJson(json);

  factory EventReviewDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return EventReviewDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(eventId: documentSnapshot.id);
  }

  EventReview toDomain() {
    return EventReview(
      eventId: eventId!,
      reviewQuantity: reviewQuantity,
      reviewAvg: reviewAvg,
    );
  }
}
