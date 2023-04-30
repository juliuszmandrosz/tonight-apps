import 'package:account_settings/domain/user_account_facade.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:tonight/application/event_room/aggregator/event_room_failure.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_facade.dart';

class EventRoomAggregator {
  final UserAccountFacade _userAccountFacade;
  final ParticipantFacade _participantFacade;

  EventRoomAggregator(this._userAccountFacade, this._participantFacade);

  Future<Either<EventRoomFailure, Participant>> joinToRoom(
    String eventId,
  ) async {
    final userResult = await _userAccountFacade.getUserAccount().first;
    if (userResult.isLeft()) {
      return left(const EventRoomFailure.unexpected());
    }
    final currentUser = userResult.getRightOrCrash();

    final participant = Participant(
      userId: currentUser.id,
      username: currentUser.username,
      profilePictureUrl: currentUser.profilePictureUrl,
    );

    final addParticipantResult = await _participantFacade.addParticipant(
      participant: participant,
      roomId: eventId,
    );

    return addParticipantResult.fold(
      (_) => left(const EventRoomFailure.unexpected()),
      (_) => right(participant),
    );
  }

  leaveRoom({
    required Participant participant,
    required String eventId,
  }) async {
    final removeParticipantResult = await _participantFacade.removeParticipant(
      participant: participant,
      roomId: eventId,
    );

    return removeParticipantResult.fold(
      (_) => left(const EventRoomFailure.unexpected()),
      (_) => right(unit),
    );
  }
}
