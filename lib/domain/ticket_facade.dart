import 'package:dartz/dartz.dart';
import 'package:raver_tickets/domain/ticket_entity.dart';
import 'package:raver_tickets/domain/ticket_failure.dart';

abstract class TicketFacade {
  Future<Either<TicketFailure, List<Ticket>>> getUserTickets();

  Future<Either<TicketFailure, Ticket>> scanTicket(
    String ticketId,
    String currentEventId,
    String userId,
  );

  Future<Either<TicketFailure, Unit>> returnTicket(
    String ticketPaymentId,
    String ticketId,
  );
}
