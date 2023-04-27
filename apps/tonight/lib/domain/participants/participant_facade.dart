import 'package:dartz/dartz.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_failure.dart';

abstract class ParticipantFacade {
  Future<Either<ParticipantFailure, List<Participant>>> fetchParticipants(
    String eventId,
  );

  Future<Either<ParticipantFailure, Unit>> addParticipant(
    Participant participant,
  );

  Future<Either<ParticipantFailure, Unit>> removeParticipant(
    Participant participant,
  );
}
