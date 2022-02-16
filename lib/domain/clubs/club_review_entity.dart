import 'package:equatable/equatable.dart';

class ClubReview extends Equatable {
  final String reviewString;
  final double reviewDouble;
  final String userId;
  final String username;
  final String timestamp;

  const ClubReview({
    required this.reviewString,
    required this.reviewDouble,
    required this.userId,
    required this.username,
    required this.timestamp,
  });

  @override
  List<Object?> get props =>
      [
        reviewString,
        reviewDouble,
        userId,
        username,
        timestamp,
      ];
}
