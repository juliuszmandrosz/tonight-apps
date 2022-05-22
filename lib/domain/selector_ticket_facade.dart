import 'package:dartz/dartz.dart';
import 'package:raver_tickets/domain/failures/selector_ticket_failure.dart';
import 'package:raver_tickets/domain/ticket_entity.dart';

abstract class SelectorTicketFacade {
  /// Returns failure or scanned ticket and user attendance in club
  Future<Either<SelectorTicketFailure, Tuple2<Ticket, int>>> scanTicket(
    String ticketId,
    String currentEventId,
    String userId,
  );
}
