import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class ReviewReport extends Equatable {
  final String id;
  final String reviewId;
  final String reporterId;
  final DateTime reportedAt;
  final String reviewContent;

  ReviewReport({
    String? id,
    required this.reviewId,
    required this.reporterId,
    required this.reportedAt,
    required this.reviewContent,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        reviewId,
        reporterId,
        reportedAt,
        reviewContent,
      ];

  ReviewReport copyWith({
    String? reviewId,
    String? reporterId,
    DateTime? reportedAt,
    String? reviewContent,
  }) {
    return ReviewReport(
      id: id,
      reviewId: reviewId ?? this.reviewId,
      reporterId: reporterId ?? this.reporterId,
      reportedAt: reportedAt ?? this.reportedAt,
      reviewContent: reviewContent ?? this.reviewContent,
    );
  }
}
