import 'package:dartz/dartz.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_failure.dart';

abstract class ParticipantFacade {
  Future<Either<ParticipantFailure, List<Participant>>> fetchParticipants({
    required String eventId,
    int pageSize = 20,
    Participant? lastParticipant,
  });

  Future<Either<ParticipantFailure, Tuple2<List<Participant>, int>>>
      fetchFirstParticipantsAndTotalCount({
    required String eventId,
    int participantsLimit = 4,
  });

  Future<Either<ParticipantFailure, Unit>> addParticipant({
    required String roomId,
    required Participant participant,
  });

  Future<Either<ParticipantFailure, Unit>> removeParticipant({
    required String roomId,
    required Participant participant,
  });
}
