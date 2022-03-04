import 'package:dartz/dartz.dart';
import 'package:raver/domain/tickets/ticket_entity.dart';
import 'package:raver/domain/tickets/ticket_failure.dart';

abstract class TicketFacade {
  Stream<Either<TicketFailure, List<Ticket>>> getTickets();

  Future<Either<TicketFailure, Unit>> addTicket(Ticket ticket);
}
