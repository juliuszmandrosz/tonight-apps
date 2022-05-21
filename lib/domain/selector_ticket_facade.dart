import 'package:dartz/dartz.dart';
import 'package:raver_tickets/domain/failures/selector_ticket_failure.dart';
import 'package:raver_tickets/domain/ticket_entity.dart';

abstract class SelectorTicketFacade {
  Future<Either<SelectorTicketFailure, Ticket>> scanTicket(
    String ticketId,
    String currentEventId,
    String userId,
  );
}
