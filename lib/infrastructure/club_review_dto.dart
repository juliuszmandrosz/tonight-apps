import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/domain/domain.dart';
import 'package:raver_common/raver_common.dart';

part 'club_review_dto.freezed.dart';

part 'club_review_dto.g.dart';

@freezed
class ClubReviewDto with _$ClubReviewDto {
  const ClubReviewDto._();

  const factory ClubReviewDto({
    required String userOpinion,
    required double userRate,
    required String userId,
    required String username,
    @TimestampJsonConverter() required DateTime dateTime,
  }) = _ClubReviewDto;

  factory ClubReviewDto.fromDomain(ClubReview clubReview) {
    return ClubReviewDto(
      userOpinion: clubReview.userOpinion,
      userRate: clubReview.userRate,
      userId: clubReview.userId,
      username: clubReview.username,
      dateTime: clubReview.dateTime,
    );
  }

  factory ClubReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ClubReviewDtoFromJson(json);

  factory ClubReviewDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ClubReviewDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  ClubReview toDomain() {
    return ClubReview(
      userOpinion: userOpinion,
      userRate: userRate,
      userId: userId,
      username: username,
      dateTime: dateTime,
    );
  }
}
