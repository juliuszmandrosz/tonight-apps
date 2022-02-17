import 'package:dartz/dartz.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_entity.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_failure.dart';

abstract class TicketOverviewFacade {
  Stream<Either<TicketOverviewFailure, List<TicketOverview>>> getTickets();
}
