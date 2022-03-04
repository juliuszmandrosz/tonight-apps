import 'package:dartz/dartz.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/domain/events/event_failure.dart';
import 'package:raver/domain/events/filters/event_filter.dart';

abstract class EventFacade {
  Future<Either<EventFailure, List<Event>>> getEvents(
    EventFilter filters, {
    int pageSize = 10,
    int offset = 0,
  });

  Future<Either<EventFailure, Event>> getEventById(String eventId);

  Future<Either<EventFailure, List<String>>> getFavoriteEventIds();

  Future<Either<EventFailure, Unit>> toggleEventFavoriteStatus(String eventId);

  Future<Either<EventFailure, Unit>> addEvent(Event event);
}
