import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_events/domain/event_tickets/get_event_tickets_mixin.dart';

abstract class PartnerEventTicketsFacade with GetEventTicketsMixin {
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
