import 'package:common/application/cubit_status.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/dashboard/models/challenge_story_with_interactions_model.dart';
import 'package:tonight/application/dashboard/models/user_stories_with_interactions.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_facade.dart';
import 'package:tonight/domain/story_interactions/story_interactions_facade.dart';
import 'package:translations/translations.dart';

part 'challenge_story_cubit.freezed.dart';
part 'challenge_story_state.dart';

class ChallengeStoryCubit extends Cubit<ChallengeStoryState> {
  final StoryInteractionsFacade _storyInteractionsFacade;
  final ChallengeStoryFacade _challengeStoryFacade;

  ChallengeStoryCubit(this._storyInteractionsFacade, this._challengeStoryFacade)
      : super(ChallengeStoryState.initial());

  initData(List<UserStoriesWithInteractions> stories) {
    emit(state.copyWith(userStoriesWithInteractions: stories));
  }

  markStoryAsSeen(String userId, ChallengeStoryWithInteractions story) async {
    final index =
        state.userStoriesWithInteractions.indexWhere((s) => s.userId == userId);

    final updatedUserStoriesWithInteractions = [
      ...state.userStoriesWithInteractions
    ];

    final storyIndex = updatedUserStoriesWithInteractions[index]
        .stories
        .indexWhere((s) => s.id == story.id);

    final updatedStories = [
      ...updatedUserStoriesWithInteractions[index].stories
    ];
    updatedStories[storyIndex] = story.copyWith(seen: true);

    updatedUserStoriesWithInteractions[index] =
        updatedUserStoriesWithInteractions[index]
            .copyWith(stories: updatedStories);

    emit(state.copyWith(
        userStoriesWithInteractions: updatedUserStoriesWithInteractions));

    await _storyInteractionsFacade.markStoryAsSeen(
      interactionId: story.interactionId,
      periodNumber: story.periodNumber,
      storyId: story.id,
    );
  }

  likeStory(String userId, ChallengeStoryWithInteractions story) async {
    final index =
        state.userStoriesWithInteractions.indexWhere((s) => s.userId == userId);
    final userStoriesWithInteractions = [...state.userStoriesWithInteractions];
    final storyIndex = userStoriesWithInteractions[index]
        .stories
        .indexWhere((s) => s.id == story.id);
    if (!story.liked) {
      final updatedStory = story.copyWith(
        liked: true,
        likesCount: story.likesCount + 1,
      );
      final updatedStories = [...userStoriesWithInteractions[index].stories];
      updatedStories[storyIndex] = updatedStory;
      userStoriesWithInteractions[index] =
          userStoriesWithInteractions[index].copyWith(stories: updatedStories);
      emit(
        state.copyWith(
          userStoriesWithInteractions: userStoriesWithInteractions,
        ),
      );
      await _storyInteractionsFacade.likeStory(
        interactionId: story.interactionId,
        storyId: story.id,
      );
    }
  }

  unlikeStory(String userId, ChallengeStoryWithInteractions story) async {
    final index =
        state.userStoriesWithInteractions.indexWhere((s) => s.userId == userId);
    final userStoriesWithInteractions = [...state.userStoriesWithInteractions];
    final storyIndex = userStoriesWithInteractions[index]
        .stories
        .indexWhere((s) => s.id == story.id);
    if (story.liked) {
      final updatedStory = story.copyWith(
        liked: false,
        likesCount: (story.likesCount > 0) ? story.likesCount - 1 : 0,
      );
      final updatedStories = [...userStoriesWithInteractions[index].stories];
      updatedStories[storyIndex] = updatedStory;
      userStoriesWithInteractions[index] =
          userStoriesWithInteractions[index].copyWith(stories: updatedStories);
      emit(
        state.copyWith(
          userStoriesWithInteractions: userStoriesWithInteractions,
        ),
      );
      await _storyInteractionsFacade.unlikeStory(
        interactionId: story.interactionId,
        storyId: story.id,
      );
    }
  }

  onCommentAdded(String userId, String storyId) async {
    final index =
        state.userStoriesWithInteractions.indexWhere((s) => s.userId == userId);
    final userStoriesWithInteractions = [...state.userStoriesWithInteractions];
    final storyIndex = userStoriesWithInteractions[index]
        .stories
        .indexWhere((s) => s.id == storyId);
    final story = userStoriesWithInteractions[index].stories[storyIndex];
    final updatedStory = story.copyWith(
      commentsCount: story.commentsCount + 1,
    );
    final updatedStories = [...userStoriesWithInteractions[index].stories];
    updatedStories[storyIndex] = updatedStory;
    userStoriesWithInteractions[index] =
        userStoriesWithInteractions[index].copyWith(stories: updatedStories);
    emit(
      state.copyWith(
        userStoriesWithInteractions: userStoriesWithInteractions,
      ),
    );
  }

  deleteStory(String storyId, String storyUrl) async {
    emit(state.copyWith(deleteStoryStatus: CubitStatus.loading));
    final result = await _challengeStoryFacade.deleteStory(storyId, storyUrl);
    result.fold(
      (_) {
        emit(state.copyWith(deleteStoryStatus: CubitStatus.failure));
        _showSnackbar(S().serverError);
      },
      (_) {
        final index = state.userStoriesWithInteractions
            .indexWhere((s) => s.stories.any((story) => story.id == storyId));

        if (index != -1) {
          final userStoriesWithInteractions = [
            ...state.userStoriesWithInteractions
          ];

          final storyIndex = userStoriesWithInteractions[index]
              .stories
              .indexWhere((s) => s.id == storyId);

          final updatedStories = [
            ...userStoriesWithInteractions[index].stories
          ];
          updatedStories.removeAt(storyIndex);

          userStoriesWithInteractions[index] =
              userStoriesWithInteractions[index]
                  .copyWith(stories: updatedStories);

          emit(
            state.copyWith(
              userStoriesWithInteractions: userStoriesWithInteractions,
              deleteStoryStatus: CubitStatus.success,
            ),
          );
        } else {
          emit(state.copyWith(deleteStoryStatus: CubitStatus.failure));
        }
      },
    );
  }

  _showSnackbar(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}
