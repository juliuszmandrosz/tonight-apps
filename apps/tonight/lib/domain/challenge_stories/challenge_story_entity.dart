import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class ChallengeStory extends Equatable {
  final String id;
  final DateTime createdAt;
  final String userId;
  final String username;
  final String userProfilePhotoUrl;
  final String storyUrl;
  final bool isVideo;
  final int likesCount;
  final int commentsCount;
  final String challengeId;
  final String challengeTitle;
  final int periodNumber;
  final DateTime challengeStartDate;
  final DateTime challengeEndDate;
  final bool isSelfie;
  final int? videoDurationInMilliseconds;

  ChallengeStory({
    String? id,
    DateTime? createdAt,
    required this.userId,
    required this.username,
    required this.userProfilePhotoUrl,
    required this.storyUrl,
    required this.isVideo,
    required this.challengeId,
    required this.challengeTitle,
    required this.periodNumber,
    required this.challengeStartDate,
    required this.challengeEndDate,
    this.isSelfie = false,
    this.likesCount = 0,
    this.commentsCount = 0,
    this.videoDurationInMilliseconds,
  })  : id = id ?? const Uuid().v1(),
        createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        id,
        createdAt,
        userId,
        username,
        userProfilePhotoUrl,
        storyUrl,
        isVideo,
        challengeId,
        challengeTitle,
        periodNumber,
        challengeStartDate,
        challengeEndDate,
        likesCount,
        commentsCount,
        videoDurationInMilliseconds,
        isSelfie,
      ];

  ChallengeStory copyWith({
    String? userId,
    String? username,
    String? userProfilePhotoUrl,
    String? storyUrl,
    bool? isVideo,
    String? challengeId,
    String? challengeTitle,
    int? periodNumber,
    DateTime? challengeStartDate,
    DateTime? challengeEndDate,
    int? likesCount,
    int? commentsCount,
    Option<int>? videoDurationInMilliseconds,
    bool? isSelfie,
  }) {
    return ChallengeStory(
      id: id,
      createdAt: createdAt,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      userProfilePhotoUrl: userProfilePhotoUrl ?? this.userProfilePhotoUrl,
      storyUrl: storyUrl ?? this.storyUrl,
      isVideo: isVideo ?? this.isVideo,
      challengeId: challengeId ?? this.challengeId,
      challengeTitle: challengeTitle ?? this.challengeTitle,
      periodNumber: periodNumber ?? this.periodNumber,
      challengeStartDate: challengeStartDate ?? this.challengeStartDate,
      challengeEndDate: challengeEndDate ?? this.challengeEndDate,
      likesCount: likesCount ?? this.likesCount,
      commentsCount: commentsCount ?? this.commentsCount,
      videoDurationInMilliseconds: videoDurationInMilliseconds != null
          ? videoDurationInMilliseconds.fold(
              () => this.videoDurationInMilliseconds,
              (duration) => duration,
            )
          : this.videoDurationInMilliseconds,
      isSelfie: isSelfie ?? this.isSelfie,
    );
  }
}
