import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/event_costs/event_costs_entity.dart';
import 'package:raver_events/domain/event_costs/event_costs_facade.dart';
import 'package:raver_events/domain/event_costs/event_costs_failure.dart';
import 'package:raver_events/domain/events/event_entity.dart';
import 'package:raver_events/infrastructure/event_costs/dtos/event_costs_dto.dart';

class FirebaseEventCostsFacade implements EventCostsFacade {
  final FirebaseFirestore _firestore;
  final Logger _logger;

  FirebaseEventCostsFacade({
    required FirebaseFirestore firestore,
    required Logger logger,
  })  : _firestore = firestore,
        _logger = logger;

  @override
  Future<Either<EventCostsFailure, EventCosts>> getEventCosts(
    Event event,
  ) async {
    try {
      final eventCostsDoc = await _getEventCostsDocRef(event).get();

      return right<EventCostsFailure, EventCosts>(
        EventCostsDto.fromFirebase(eventCostsDoc).toDomain(),
      );
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during getting event costs EXCEPTION: $e");
      return left(const EventCostsFailure.unexpected());
    }
  }

  DocumentReference _getEventCostsDocRef(Event event) {
    final clubDoc = _firestore.clubCollection.doc(event.clubId);
    return clubDoc.eventCosts.doc(event.id);
  }
}
