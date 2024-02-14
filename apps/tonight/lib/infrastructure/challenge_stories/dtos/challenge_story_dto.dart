import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/infrastructure/json_converters/firebase_timestamp_json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_entity.dart';

part 'challenge_story_dto.freezed.dart';
part 'challenge_story_dto.g.dart';

@freezed
class ChallengeStoryDto with _$ChallengeStoryDto {
  const ChallengeStoryDto._();

  const factory ChallengeStoryDto({
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
    required String userId,
    required String username,
    required String userProfilePhotoUrl,
    required String storyUrl,
    required bool isVideo,
    required String challengeId,
    required String challengeTitle,
    required int periodNumber,
    @FirebaseTimestampJsonConverter() required DateTime challengeStartDate,
    @FirebaseTimestampJsonConverter() required DateTime challengeEndDate,
    @Default(0) int likesCount,
    @Default(0) int commentsCount,
    @Default(false) bool isSelfie,
    int? videoDurationInMilliseconds,
  }) = _ChallengeStoryDto;

  factory ChallengeStoryDto.fromJson(Map<String, dynamic> json) =>
      _$ChallengeStoryDtoFromJson(json);

  factory ChallengeStoryDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ChallengeStoryDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory ChallengeStoryDto.fromDomain(ChallengeStory challengeStory) {
    return ChallengeStoryDto(
      id: challengeStory.id,
      createdAt: challengeStory.createdAt,
      userId: challengeStory.userId,
      username: challengeStory.username,
      userProfilePhotoUrl: challengeStory.userProfilePhotoUrl,
      storyUrl: challengeStory.storyUrl,
      isVideo: challengeStory.isVideo,
      challengeId: challengeStory.challengeId,
      challengeTitle: challengeStory.challengeTitle,
      challengeStartDate: challengeStory.challengeStartDate,
      challengeEndDate: challengeStory.challengeEndDate,
      periodNumber: challengeStory.periodNumber,
      likesCount: challengeStory.likesCount,
      commentsCount: challengeStory.commentsCount,
      videoDurationInMilliseconds: challengeStory.videoDurationInMilliseconds,
      isSelfie: challengeStory.isSelfie,
    );
  }

  ChallengeStory toDomain() {
    return ChallengeStory(
      id: id,
      createdAt: createdAt,
      userId: userId,
      username: username,
      userProfilePhotoUrl: userProfilePhotoUrl,
      storyUrl: storyUrl,
      isVideo: isVideo,
      challengeId: challengeId,
      challengeTitle: challengeTitle,
      challengeStartDate: challengeStartDate,
      challengeEndDate: challengeEndDate,
      periodNumber: periodNumber,
      likesCount: likesCount,
      commentsCount: commentsCount,
      videoDurationInMilliseconds: videoDurationInMilliseconds,
      isSelfie: isSelfie,
    );
  }
}
