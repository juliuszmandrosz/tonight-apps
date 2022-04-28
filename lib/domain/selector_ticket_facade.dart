import 'package:dartz/dartz.dart';
import 'package:raver_tickets/domain/ticket_entity.dart';
import 'package:raver_tickets/domain/ticket_failure.dart';

abstract class SelectorTicketFacade {
  Future<Either<TicketFailure, Ticket>> scanTicket(
    String ticketId,
    String currentEventId,
    String userId,
  );
}
