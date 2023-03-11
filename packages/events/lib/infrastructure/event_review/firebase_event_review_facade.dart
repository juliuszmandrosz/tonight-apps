import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/infrastructure/event_review/dtos/event_review_dto.dart';
import 'package:raver_events/raver_events.dart';

class FirebaseEventReviewFacade implements PartnerEventReviewFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseEventReviewFacade({
    required FirebaseFirestore firestore,
    required FirebaseCrashlytics crashlytics,
    required Logger logger,
  })  : _firestore = firestore,
        _crashlytics = crashlytics,
        _logger = logger;

  @override
  Future<Either<EventReviewFailure, EventReview>> getEventReview(
    Event event,
  ) async {
    try {
      final eventReviewDoc = await _getEventReviewDocRef(event).get();

      return right<EventReviewFailure, EventReview>(
        EventReviewDto.fromFirebase(eventReviewDoc).toDomain(),
      );
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<EventReviewFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception getting event review EXCEPTION: $e',
          unexpectedFailure: const EventReviewFailure.unexpected(),
          permissionDeniedFailure: const EventReviewFailure.permissionDenied(),
        ),
      );
    }
  }

  DocumentReference _getEventReviewDocRef(Event event) {
    final clubDoc = _firestore.clubCollection.doc(event.clubId);
    return clubDoc.eventReview.doc(event.id);
  }
}
