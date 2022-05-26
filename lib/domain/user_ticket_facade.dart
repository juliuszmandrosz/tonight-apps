import 'package:dartz/dartz.dart';
import 'package:raver_tickets/domain/ticket_entity.dart';
import 'package:raver_tickets/domain/failures/user_ticket_failure.dart';

abstract class UserTicketFacade {
  Stream<Either<UserTicketFailure, List<Ticket>>> getUserTickets();

  Future<Either<UserTicketFailure, Unit>> returnTicket(
    String ticketPaymentId,
    String ticketId,
  );
}
