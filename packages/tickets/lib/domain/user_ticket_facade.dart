import 'package:dartz/dartz.dart';
import 'package:tickets/domain/failures/user_ticket_failure.dart';
import 'package:tickets/domain/ticket_entity.dart';

abstract class UserTicketFacade {
  Future<Either<UserTicketFailure, List<Ticket>>> getUserTickets({
    int pageSize = 20,
    Ticket? lastTicket,
  });

  Future<Either<UserTicketFailure, Unit>> returnTicket(String ticketPaymentId,
      String ticketId,);

  Future<Either<UserTicketFailure, Unit>> activateTicket(String ticketId);

  Future<Either<UserTicketFailure, Unit>> receiveTicket(String ticketId);

  Stream<Either<UserTicketFailure, Ticket>> listenTicketById(String ticketId);

  Stream<Either<UserTicketFailure, Ticket>> waitForTicketToBeCreated();


}
