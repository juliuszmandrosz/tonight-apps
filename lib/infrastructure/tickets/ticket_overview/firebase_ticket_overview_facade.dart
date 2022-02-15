import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_entity.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_facade.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_failure.dart';
import 'package:raver/infrastructure/core/firestore_helpers.dart';
import 'package:raver/infrastructure/tickets/ticket_overview/dtos/ticket_overview_dto.dart';

@LazySingleton(as: TicketOverviewFacade)
class FirebaseTicketOverviewFacade implements TicketOverviewFacade {
  final FirebaseFirestore _firestore;
  final logger = Logger();

  FirebaseTicketOverviewFacade(this._firestore);

  @override
  Future<Either<TicketOverviewFailure, List<TicketOverview>>>
      getTickets() async {
    try {
      final userDoc = await _firestore.userDocument();
      final query = userDoc.ticketCollection.limit(10);
      QuerySnapshot result = await query.get();

      return right(
        result.docs
            .map((QueryDocumentSnapshot document) =>
                TicketOverviewDto.fromFirebase(document).toDomain())
            .toList(),
      );
    } on FirebaseException catch (exception) {
      logger.e("Exception during fetching tickets EXCEPTION: $exception");
      return left(const TicketOverviewFailure.unexpected());
    }
  }
}
