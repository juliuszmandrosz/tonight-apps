import 'package:dartz/dartz.dart';
import 'package:events/domain/event_tickets/entities/event_tickets_entity.dart';
import 'package:events/domain/event_tickets/event_tickets_failure.dart';

mixin GetEventTicketsMixin {
  Stream<Either<EventTicketsFailure, EventTickets>> getEventTickets({
    required String clubId,
    required String eventId,
  });
}
