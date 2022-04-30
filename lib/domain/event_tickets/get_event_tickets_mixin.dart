import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/event_tickets/entities/event_tickets_entity.dart';
import 'package:raver_events/domain/event_tickets/event_tickets_failure.dart';
import 'package:raver_events/domain/events/event_entity.dart';

mixin GetEventTicketsMixin {
  Stream<Either<EventTicketsFailure, EventTickets>> getEventTickets(
    Event event,
  );
}
