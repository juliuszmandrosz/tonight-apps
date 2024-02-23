import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class Participant extends Equatable {
  final String userId;
  final String username;
  final int stepCount;
  final int initialStepCount;
  final String? profilePictureUrl;

  const Participant({
    required this.userId,
    required this.username,
    this.profilePictureUrl,
    this.stepCount = 0,
    this.initialStepCount = 0,
  });

  @override
  List<Object?> get props => [
        userId,
        username,
        profilePictureUrl,
        stepCount,
        initialStepCount,
      ];

  Participant copyWith({
    String? userId,
    String? username,
    Option<String>? profilePictureUrl,
    int? stepCount,
    int? initialStepCount,
  }) {
    return Participant(
      userId: userId ?? this.userId,
      username: username ?? this.username,
      profilePictureUrl: profilePictureUrl != null
          ? profilePictureUrl.fold(
              () => null,
              (url) => url,
            )
          : this.profilePictureUrl,
      stepCount: stepCount ?? this.stepCount,
      initialStepCount: initialStepCount ?? this.initialStepCount,
    );
  }
}
