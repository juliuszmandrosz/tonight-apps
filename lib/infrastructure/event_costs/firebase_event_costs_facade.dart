import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/event_costs/event_costs_entity.dart';
import 'package:raver_events/domain/event_costs/event_costs_facade.dart';
import 'package:raver_events/domain/event_costs/event_costs_failure.dart';
import 'package:raver_events/domain/events/event_entity.dart';
import 'package:raver_events/infrastructure/event_costs/dtos/event_costs_dto.dart';

class FirebaseEventCostsFacade implements EventCostsFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseEventCostsFacade({
    required FirebaseFirestore firestore,
    required FirebaseCrashlytics crashlytics,
    required Logger logger,
  })  : _firestore = firestore,
        _crashlytics = crashlytics,
        _logger = logger;

  @override
  Stream<Either<EventCostsFailure, EventCosts>> getEventCosts(
    Event event,
  ) async* {
    final eventCostsDocRef = _getEventCostsDocRef(event);

    yield* eventCostsDocRef
        .snapshots()
        .map(
          (snapshot) => right<EventCostsFailure, EventCosts>(
            EventCostsDto.fromFirebase(snapshot).toDomain(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException) {
        _logger.e(
          "Firebase Exception getting event costs EXCEPTION: $e",
        );
        _crashlytics.recordError(e, StackTrace.current);
        return left(const EventCostsFailure.unexpected());
      }
    });
  }

  DocumentReference _getEventCostsDocRef(Event event) {
    final clubDoc = _firestore.clubCollection.doc(event.clubId);
    return clubDoc.eventCosts.doc(event.id);
  }
}
