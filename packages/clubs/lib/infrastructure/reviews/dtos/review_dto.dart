import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clubs/domain/domain.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
class ReviewDto with _$ReviewDto {
  const ReviewDto._();

  const factory ReviewDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required String userOpinion,
    required double userRate,
    required String userId,
    required String username,
    required String eventId,
    required String eventName,
    @TimestampJsonConverter() required DateTime dateAdded,
    String? userPictureUrl,
    @Default(false) bool isUserDeleted,
    @Default([]) List<String> collectiveIds,
    String? clubId,
  }) = _ReviewDto;

  factory ReviewDto.fromDomain(Review review) {
    return ReviewDto(
      id: review.id,
      userOpinion: review.userOpinion,
      userRate: review.userRate,
      userId: review.userId,
      username: review.username,
      dateAdded: review.dateAdded,
      eventId: review.eventId,
      eventName: review.eventName,
      userPictureUrl: review.userPictureUrl,
      isUserDeleted: review.isUserDeleted,
      collectiveIds: review.collectiveIds,
      clubId: review.clubId,
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
      userPictureUrl: userPictureUrl,
      isUserDeleted: isUserDeleted,
      collectiveIds: collectiveIds,
      clubId: clubId,
    );
  }
}
