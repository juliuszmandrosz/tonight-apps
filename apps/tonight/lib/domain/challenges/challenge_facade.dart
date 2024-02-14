import 'package:dartz/dartz.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:tonight/domain/challenges/challenge_failure.dart';

abstract class ChallengeFacade {
  // value 1 current period, value 2 previous period
  Future<Either<ChallengeFailure, Tuple2<List<Challenge>, List<Challenge>>>>
      getChallenges();
}
