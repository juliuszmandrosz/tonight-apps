import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class ReviewReport extends Equatable {
  final String id;
  final String reviewId;
  final String reporterId;
  final DateTime reportedAt;

  ReviewReport({
    String? id,
    required this.reviewId,
    required this.reporterId,
    required this.reportedAt,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        reviewId,
        reporterId,
        reportedAt,
      ];

  ReviewReport copyWith({
    String? reviewId,
    String? reporterId,
    DateTime? reportedAt,
  }) {
    return ReviewReport(
      id: id,
      reviewId: reviewId ?? this.reviewId,
      reporterId: reporterId ?? this.reporterId,
      reportedAt: reportedAt ?? this.reportedAt,
    );
  }
}
