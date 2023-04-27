import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:tonight/application/tonight_events/aggregator/tonight_events_failure.dart';
import 'package:tonight/application/tonight_events/models/tonight_event_model.dart';
import 'package:tonight/domain/participants/participant_facade.dart';

class TonightEventsAggregator {
  final UserEventFacade _eventFacade;
  final ParticipantFacade _participantFacade;

  TonightEventsAggregator(this._eventFacade, this._participantFacade);

  Future<Either<TonightEventsFailure, List<TonightEvent>>> fetchTonightEvents({
    int pageSize = 10,
    int offset = 0,
  }) async {
    final eventsResult = await _eventFacade.fetchTonightEvents(
      pageSize: pageSize,
      offset: offset,
    );
    if (eventsResult.isLeft()) {
      return const Left(TonightEventsFailure.unexpected());
    }
    final result = await Future.wait(
      [
        for (final event in eventsResult.getRightOrCrash())
          _participantFacade
              .fetchFirstParticipantsAndTotalCount(eventId: event.id)
              .then(
                (participantsResult) => participantsResult.fold(
                  (failure) => TonightEvent.fromDomain(
                    event: event,
                    firstParticipants: none(),
                    totalParticipants: 0,
                  ),
                  (participants) => TonightEvent.fromDomain(
                    event: event,
                    firstParticipants: some(participants.value1),
                    totalParticipants: participants.value2,
                  ),
                ),
              )
      ],
    );
    return right(result);
  }
}
