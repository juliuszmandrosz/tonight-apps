import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_entity.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_facade.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_failure.dart';
import 'package:raver/infrastructure/core/firestore_helpers.dart';
import 'package:raver/infrastructure/tickets/ticket_overview/dtos/ticket_overview_dto.dart';

class FirebaseTicketOverviewFacade implements TicketOverviewFacade {
  final FirebaseFirestore _firestore;
  final logger = Logger();

  FirebaseTicketOverviewFacade({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  @override
  Stream<Either<TicketOverviewFailure, List<TicketOverview>>>
      getTickets() async* {
    final userDoc = await _firestore.userDocument();

    yield* userDoc.ticketCollection
        .snapshots()
        .map(
          (snapshot) => right<TicketOverviewFailure, List<TicketOverview>>(
            snapshot.docs
                .map((doc) => TicketOverviewDto.fromFirebase(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      logger.e("Exception during fetching tickets EXCEPTION: $e");
      return left(const TicketOverviewFailure.unexpected());
    });
  }

  @override
  Future<Either<TicketOverviewFailure, Unit>> addTicket(
      TicketOverview ticketOverview) async {
    try {
      final userDoc = await _firestore.userDocument();
      final ticketOverviewDto = TicketOverviewDto.fromDomain(ticketOverview);

      await userDoc.ticketCollection.add(ticketOverviewDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      logger.e("Exception during adding ticket EXCEPTION: $e");
      return left(const TicketOverviewFailure.unexpected());
    }
  }
}
