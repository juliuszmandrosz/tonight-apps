import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';

abstract class PartnerEventFacade {
  Future<Either<EventFailure, Unit>> addEvent(
    Event event,
    EventTickets eventTickets,
  );

  Future<Either<EventFailure, Unit>> updateEvent(Event event);
}
