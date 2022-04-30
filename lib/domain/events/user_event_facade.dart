import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';

abstract class UserEventFacade {
  Future<Either<EventFailure, Event>> getEventById(String eventId);

  Future<Either<EventFailure, List<Event>>> getFutureEventsByIds(
    List<String> eventIds,
  );

  Future<Either<EventFailure, Unit>> toggleEventFavoriteStatus(String eventId);
}
