import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clubs/domain/domain.dart';
import 'package:common/common.dart';

part 'review_report_dto.freezed.dart';

part 'review_report_dto.g.dart';

@freezed
class ReviewReportDto with _$ReviewReportDto {
  const ReviewReportDto._();

  const factory ReviewReportDto({
    @JsonKey(ignore: true) String? id,
    required String reviewId,
    required String reporterId,
    @FirebaseTimestampJsonConverter() required DateTime reportedAt,
  }) = _ReviewReportDto;

  factory ReviewReportDto.fromDomain(ReviewReport reviewReport) {
    return ReviewReportDto(
      id: reviewReport.id,
      reviewId: reviewReport.reviewId,
      reporterId: reviewReport.reporterId,
      reportedAt: reviewReport.reportedAt,
    );
  }

  factory ReviewReportDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewReportDtoFromJson(json);

  factory ReviewReportDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ReviewReportDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  ReviewReport toDomain() {
    return ReviewReport(
      id: id,
      reviewId: reviewId,
      reporterId: reporterId,
      reportedAt: reportedAt,
    );
  }
}
