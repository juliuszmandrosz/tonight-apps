part of 'add_challenge_story_cubit.dart';

@freezed
class AddChallengeStoryState with _$AddChallengeStoryState {
  const factory AddChallengeStoryState({
    required Option<String> snackbarMessage,
    required bool isSelfie,
    required bool flashScreen,
    required Option<String> filePath,
    required Option<Challenge> challenge,
  }) = _AddChallengeStoryState;

  factory AddChallengeStoryState.initial() => AddChallengeStoryState(
        snackbarMessage: none(),
        isSelfie: false,
        flashScreen: false,
        filePath: none(),
        challenge: none(),
      );
}
