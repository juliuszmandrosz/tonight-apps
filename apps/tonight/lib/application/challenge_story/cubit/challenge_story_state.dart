part of 'challenge_story_cubit.dart';

@freezed
class ChallengeStoryState with _$ChallengeStoryState {
  const factory ChallengeStoryState({
    required CubitStatus likeStoryStatus,
    required CubitStatus deleteStoryStatus,
    required Option<String> snackbarMessage,
    required List<UserStoriesWithInteractions> userStoriesWithInteractions,
  }) = _ChallengeStoryState;

  factory ChallengeStoryState.initial() => ChallengeStoryState(
        likeStoryStatus: CubitStatus.initial,
        deleteStoryStatus: CubitStatus.initial,
        snackbarMessage: none(),
        userStoriesWithInteractions: [],
      );
}
