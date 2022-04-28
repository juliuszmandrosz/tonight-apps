import 'package:dartz/dartz.dart';
import 'package:raver_tickets/domain/ticket_entity.dart';
import 'package:raver_tickets/domain/ticket_failure.dart';

abstract class UserTicketFacade {
  Future<Either<TicketFailure, List<Ticket>>> getUserTickets();

  Future<Either<TicketFailure, Unit>> returnTicket(
    String ticketPaymentId,
    String ticketId,
  );
}
