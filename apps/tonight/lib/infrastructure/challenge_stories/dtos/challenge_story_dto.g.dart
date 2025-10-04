// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_story_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengeStoryDtoImpl _$$ChallengeStoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ChallengeStoryDtoImpl(
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
      userId: json['userId'] as String,
      username: json['username'] as String,
      userProfilePhotoUrl: json['userProfilePhotoUrl'] as String,
      storyUrl: json['storyUrl'] as String,
      isVideo: json['isVideo'] as bool,
      challengeId: json['challengeId'] as String,
      challengeTitle: json['challengeTitle'] as String,
      periodNumber: json['periodNumber'] as int,
      challengeStartDate: const FirebaseTimestampJsonConverter()
          .fromJson(json['challengeStartDate'] as Timestamp),
      challengeEndDate: const FirebaseTimestampJsonConverter()
          .fromJson(json['challengeEndDate'] as Timestamp),
      likesCount: json['likesCount'] as int? ?? 0,
      commentsCount: json['commentsCount'] as int? ?? 0,
      isSelfie: json['isSelfie'] as bool? ?? false,
      videoDurationInMilliseconds: json['videoDurationInMilliseconds'] as int?,
    );

Map<String, dynamic> _$$ChallengeStoryDtoImplToJson(
        _$ChallengeStoryDtoImpl instance) =>
    <String, dynamic>{
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
      'userId': instance.userId,
      'username': instance.username,
      'userProfilePhotoUrl': instance.userProfilePhotoUrl,
      'storyUrl': instance.storyUrl,
      'isVideo': instance.isVideo,
      'challengeId': instance.challengeId,
      'challengeTitle': instance.challengeTitle,
      'periodNumber': instance.periodNumber,
      'challengeStartDate': const FirebaseTimestampJsonConverter()
          .toJson(instance.challengeStartDate),
      'challengeEndDate': const FirebaseTimestampJsonConverter()
          .toJson(instance.challengeEndDate),
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'isSelfie': instance.isSelfie,
      'videoDurationInMilliseconds': instance.videoDurationInMilliseconds,
    };
