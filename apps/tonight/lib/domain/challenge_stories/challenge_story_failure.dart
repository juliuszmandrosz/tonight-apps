import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge_story_failure.freezed.dart';

@freezed
class ChallengeStoryFailure with _$ChallengeStoryFailure {
  const factory ChallengeStoryFailure.unexpected() = _Unexpected;

  const factory ChallengeStoryFailure.alreadyAttended() = _AlreadyAttended;
}
