import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_facade.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_failure.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:tonight/domain/challenges/challenge_facade.dart';

part 'challenges_cubit.freezed.dart';
part 'challenges_state.dart';

class ChallengesCubit extends Cubit<ChallengesState> {
  final ChallengeFacade _challengeFacade;
  final ChallengeStoryFacade _challengeStoryFacade;

  ChallengesCubit(
    this._challengeFacade,
    this._challengeStoryFacade,
  ) : super(ChallengesState.initial());

  Future<void> getChallenges() async {
    emit(state.copyWith(status: CubitStatus.loading));
    final result = await _challengeFacade.getChallenges();
    result.fold(
      (_) => emit(state.copyWith(status: CubitStatus.failure)),
      (challenges) => emit(
        state.copyWith(
          status: CubitStatus.success,
          currentChallenges: challenges.value1,
          previousChallenges: challenges.value2,
        ),
      ),
    );
  }

  Future<Either<ChallengeStoryFailure, bool>> checkIfUserAlreadyAttended(
    String challengeId,
  ) async {
    emit(state.copyWith(joinChallengeStatus: CubitStatus.loading));
    final result =
        await _challengeStoryFacade.checkIfUserAlreadyAttended(challengeId);
    emit(state.copyWith(joinChallengeStatus: CubitStatus.initial));
    return result;
  }
}
