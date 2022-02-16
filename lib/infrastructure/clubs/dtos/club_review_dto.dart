import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/club_review_entity.dart';
import 'package:raver/infrastructure/core/domain_formatters/date_formats.dart';
import 'package:raver/infrastructure/core/domain_formatters/date_formatter.dart';
import 'package:raver/infrastructure/core/json_converters/timestamp_json_converter.dart';

part 'club_review_dto.freezed.dart';

part 'club_review_dto.g.dart';

@freezed
class ClubReviewDto with _$ClubReviewDto {
  const ClubReviewDto._();

  const factory ClubReviewDto({
    required String reviewString,
    required double reviewDouble,
    required String userId,
    required String username,
    @TimestampJsonConverter() required DateTime timestamp,
  }) = _ClubReviewDto;

  factory ClubReviewDto.fromDomain(ClubReview clubReview) {
    return ClubReviewDto(
      reviewString: clubReview.reviewString,
      reviewDouble: clubReview.reviewDouble,
      userId: clubReview.userId,
      username: clubReview.username,
      timestamp: DateTime.parse(clubReview.timestamp),
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
        reviewString: reviewString,
        reviewDouble: reviewDouble,
        userId: userId,
        username: username,
        timestamp: timestamp.formatDate(DateFormats.reviewFormat));
  }
}
