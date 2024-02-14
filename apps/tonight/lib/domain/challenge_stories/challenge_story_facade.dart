import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_entity.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_failure.dart';

abstract class ChallengeStoryFacade {
  Future<Either<ChallengeStoryFailure, List<ChallengeStory>>> getStories(
    int periodNumber,
  );

  Future<Either<ChallengeStoryFailure, Unit>> addStory(
    Uint8List file,
    ChallengeStory story,
  );

  Future<Either<ChallengeStoryFailure, Unit>> deleteStory(
    String storyId,
    String storyUrl,
  );

  Future<Either<ChallengeStoryFailure, bool>> checkIfUserAlreadyAttended(
    String challengeId,
  );
}
