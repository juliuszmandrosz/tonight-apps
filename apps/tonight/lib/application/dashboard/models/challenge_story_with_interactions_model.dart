import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_entity.dart';
import 'package:tonight/domain/story_interactions/story_interactions_entity.dart';

part 'challenge_story_with_interactions_model.freezed.dart';

@freezed
class ChallengeStoryWithInteractions with _$ChallengeStoryWithInteractions {
  const factory ChallengeStoryWithInteractions({
    required String id,
    required String interactionId,
    required DateTime createdAt,
    required String storyUrl,
    required bool isVideo,
    required bool isSelfie,
    required int likesCount,
    required int commentsCount,
    required String challengeTitle,
    required bool liked,
    required bool seen,
    required int periodNumber,
    DateTime? seenAt,
    int? videoDurationInMilliseconds,
  }) = _ChallengeStoryWithInteractions;

  factory ChallengeStoryWithInteractions.fromDomain({
    required ChallengeStory story,
    required StoryInteractions interaction,
  }) {
    return ChallengeStoryWithInteractions(
      id: story.id,
      interactionId: interaction.id,
      createdAt: story.createdAt,
      storyUrl: story.storyUrl,
      isVideo: story.isVideo,
      isSelfie: story.isSelfie,
      likesCount: story.likesCount,
      commentsCount: story.commentsCount,
      challengeTitle: story.challengeTitle,
      liked: interaction.liked,
      seen: interaction.seen,
      periodNumber: story.periodNumber,
      seenAt: interaction.seenAt,
      videoDurationInMilliseconds: story.videoDurationInMilliseconds,
    );
  }
}
