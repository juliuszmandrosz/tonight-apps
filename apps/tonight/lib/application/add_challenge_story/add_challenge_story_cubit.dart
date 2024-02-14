import 'package:common/application/cubit_status.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_facade.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';

part 'add_challenge_story_cubit.freezed.dart';
part 'add_challenge_story_state.dart';

class AddChallengeStoryCubit extends Cubit<AddChallengeStoryState> {
  final ChallengeStoryFacade _challengeStoryFacade;

  AddChallengeStoryCubit(this._challengeStoryFacade)
      : super(AddChallengeStoryState.initial());

  initData(Challenge challenge) {
    emit(state.copyWith(challenge: some(challenge)));
  }


  flashScreenEnded() {
    emit(state.copyWith(flashScreen: false));
  }

  flashScreenStarted() {
    emit(state.copyWith(flashScreen: true));
  }

  switchCamera() {
    emit(state.copyWith(isSelfie: !state.isSelfie));
  }

  saveFile(String path) {
    emit(state.copyWith(filePath: some(path)));
  }
}
