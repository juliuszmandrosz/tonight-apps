import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/tickets/ticket_entity.dart';
import 'package:raver/domain/tickets/ticket_facade.dart';
import 'package:raver/domain/tickets/ticket_failure.dart';
import 'package:raver/infrastructure/core/firestore_helpers.dart';
import 'package:raver/infrastructure/tickets/dtos/ticket_dto.dart';

class FirebaseTicketFacade implements TicketFacade {
  final FirebaseFirestore _firestore;
  final Logger _logger;

  FirebaseTicketFacade({
    required FirebaseFirestore firestore,
    required Logger logger,
  })  : _firestore = firestore,
        _logger = logger;

  @override
  Future<Either<TicketFailure, List<Ticket>>> getTickets() async {
    final userDoc = await _firestore.userDocument();

    try {
      final result = await userDoc.ticketCollection.get();
      return right<TicketFailure, List<Ticket>>(
        result.docs
            .map(
              (doc) => TicketDto.fromFirebase(doc).toDomain(),
            )
            .toList(),
      );
    } on FirebaseException catch (e) {
      _logger.e("Exception during fetching tickets EXCEPTION: $e");
      return left(const TicketFailure.unexpected());
    }
  }

  @override
  Future<Either<TicketFailure, Unit>> addTicket(Ticket ticket) async {
    try {
      final userDoc = await _firestore.userDocument();
      final ticketDto = TicketDto.fromDomain(ticket);

      await userDoc.ticketCollection.doc(ticket.id).set(ticketDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Exception during adding ticket EXCEPTION: $e");
      return left(const TicketFailure.unexpected());
    }
  }
}
