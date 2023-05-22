import 'package:account_settings/domain/user_account_facade.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:events/domain/events/user_event_facade.dart';
import 'package:tonight/application/event_room/aggregator/event_room_failure.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_facade.dart';

class EventRoomAggregator {
  final UserAccountFacade _userAccountFacade;
  final ParticipantFacade _participantFacade;
  final UserEventFacade _eventFacade;

  EventRoomAggregator(
    this._userAccountFacade,
    this._participantFacade,
    this._eventFacade,
  );

  Future<Either<EventRoomFailure, Tuple2<Participant, Event>>> joinToRoom({
    required String eventId,
    Event? event,
  }) async {
    final initEventResult = await _initEvent(
      eventId: eventId,
      event: event,
    );
    if (initEventResult.isLeft()) {
      return left(initEventResult.getLeftOrCrash());
    }
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
      (_) => right(
        tuple2(
          participant,
          initEventResult.getRightOrCrash(),
        ),
      ),
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

  Future<Either<EventRoomFailure, Event>> _initEvent({
    required String eventId,
    Event? event,
  }) async {
    if (event != null) return right(event);
    final result = await _eventFacade.getEventById(eventId);
    return result.fold(
      (_) => left(const EventRoomFailure.unexpected()),
      (event) => right(event),
    );
  }
}
