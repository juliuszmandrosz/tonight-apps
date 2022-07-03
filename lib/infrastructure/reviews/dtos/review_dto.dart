import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/domain/domain.dart';
import 'package:raver_common/raver_common.dart';

part 'review_dto.freezed.dart';

part 'review_dto.g.dart';

@freezed
class ReviewDto with _$ReviewDto {
  const ReviewDto._();

  const factory ReviewDto({
    @JsonKey(ignore: true) String? id,
    required String userOpinion,
    required double userRate,
    required String userId,
    required String username,
    required String eventId,
    required String eventName,
    required String ticketId,
    @TimestampJsonConverter() required DateTime dateAdded,
  }) = _ReviewDto;

  factory ReviewDto.fromDomain(Review review) {
    return ReviewDto(
      userOpinion: review.userOpinion,
      userRate: review.userRate,
      userId: review.userId,
      username: review.username,
      dateAdded: review.dateAdded,
      eventId: review.eventId,
      eventName: review.eventName,
      ticketId: review.ticketId,
    );
  }

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);

  factory ReviewDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ReviewDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  Review toDomain() {
    return Review(
      id: id,
      userOpinion: userOpinion,
      userRate: userRate,
      userId: userId,
      username: username,
      eventId: eventId,
      dateAdded: dateAdded,
      eventName: eventName,
      ticketId: ticketId,
    );
  }
}
