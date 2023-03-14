import 'package:dartz/dartz.dart';
import 'package:tickets/domain/ticket_entity.dart';
import 'package:tickets/domain/failures/user_ticket_failure.dart';

abstract class UserTicketFacade {
  Stream<Either<UserTicketFailure, List<Ticket>>>
      getUpcomingAndLiveUserTickets();

  Future<Either<UserTicketFailure, List<Ticket>>> getPastUserTickets({
    int pageSize = 20,
    Ticket? lastTicket,
  });

  Future<Either<UserTicketFailure, Unit>> returnTicket(
    String ticketPaymentId,
    String ticketId,
  );
}
