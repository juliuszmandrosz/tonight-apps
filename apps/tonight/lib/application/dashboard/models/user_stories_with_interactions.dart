import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/dashboard/models/challenge_story_with_interactions_model.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_entity.dart';

part 'user_stories_with_interactions.freezed.dart';

@freezed
class UserStoriesWithInteractions with _$UserStoriesWithInteractions {
  const factory UserStoriesWithInteractions({
    required String userId,
    required String username,
    required String userProfilePhotoUrl,
    required bool isCurrentUser,
    required List<ChallengeStoryWithInteractions> stories,
  }) = _UserStoriesWithInteractions;

  factory UserStoriesWithInteractions.emptyFromDomain({
    required ChallengeStory challengeStory,
    required ChallengeStoryWithInteractions challengeStoryWithInteractions,
    required String currentUserId,
  }) {
    return UserStoriesWithInteractions(
      userId: challengeStory.userId,
      username: challengeStory.username,
      userProfilePhotoUrl: challengeStory.userProfilePhotoUrl,
      isCurrentUser: challengeStory.userId == currentUserId,
      stories: [challengeStoryWithInteractions],
    );
  }
}
