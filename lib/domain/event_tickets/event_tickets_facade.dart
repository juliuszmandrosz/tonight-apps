import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';

abstract class EventTicketsFacade {
  Stream<Either<EventTicketsFailure, EventTickets>> getEventTickets(
      Event event);

  Future<Either<EventTicketsFailure, Unit>> addTicketPool(
    Event event,
    TicketPool ticketPool,
  );

  Future<Either<EventTicketsFailure, Unit>> updateTicketPool(
    Event event,
    TicketPool updatedTicketPool,
  );

  Future<Either<EventTicketsFailure, Unit>> deleteTicketPool(
    Event event,
    TicketPool ticketPool,
  );
}
