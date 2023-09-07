import 'package:dartz/dartz.dart';
import 'package:tonight/domain/story_interactions/story_interactions_entity.dart';
import 'package:tonight/domain/story_interactions/story_interactions_failure.dart';

abstract class StoryInteractionsFacade {
  Future<Either<StoryInteractionsFailure, List<StoryInteractions>>>
      getUserInteractions(int periodNumber);

  Future<Either<StoryInteractionsFailure, Unit>> likeStory({
    required String interactionId,
    required String storyId,
  });

  Future<Either<StoryInteractionsFailure, Unit>> unlikeStory({
    required String interactionId,
    required String storyId,
  });

  Future<Either<StoryInteractionsFailure, Unit>> markStoryAsSeen({
    required storyId,
    required String interactionId,
    required int periodNumber,
  });
}
