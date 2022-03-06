import 'package:equatable/equatable.dart';

class ClubReview extends Equatable {
  final String userOpinion;
  final double userRate;
  final String userId;
  final String username;
  final String timestamp;

  const ClubReview({
    required this.userOpinion,
    required this.userRate,
    required this.userId,
    required this.username,
    required this.timestamp,
  });

  @override
  List<Object?> get props =>
      [
        userOpinion,
        userRate,
        userId,
        username,
        timestamp,
      ];
}
