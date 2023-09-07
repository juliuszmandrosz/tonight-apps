part of 'challenges_cubit.dart';

@freezed
class ChallengesState with _$ChallengesState {
  const factory ChallengesState({
    required List<Challenge> currentChallenges,
    required List<Challenge> previousChallenges,
    required CubitStatus status,
    required CubitStatus joinChallengeStatus,
  }) = _ChallengesState;

  factory ChallengesState.initial() => const ChallengesState(
        currentChallenges: [],
        previousChallenges: [],
        status: CubitStatus.initial,
        joinChallengeStatus: CubitStatus.initial,
      );
}
