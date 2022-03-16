import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_events/domain/errors/invalid_id_error.dart';
import 'package:raver_events/domain/errors/not_authenticated_error.dart';
import 'package:raver_events/domain/event_entity.dart';
import 'package:raver_events/domain/event_facade.dart';
import 'package:raver_events/domain/event_failure.dart';
import 'package:raver_events/domain/filters/event_filters_entity.dart';
import 'package:raver_events/infrastructure/algolia_events_api.dart';
import 'package:raver_events/infrastructure/dtos/event_dto.dart';
import 'package:raver_events/infrastructure/firestore_helpers.dart';

class FirebaseEventFacade implements EventFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final AlgoliaEventsApi _algoliaEventsApi;
  final Logger _logger;

  FirebaseEventFacade({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
    required AlgoliaEventsApi algoliaEventsApi,
    required Logger logger,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore,
        _algoliaEventsApi = algoliaEventsApi,
        _logger = logger;

  @override
  Future<Either<EventFailure, List<Event>>> getEvents(
    EventFilters filters, {
    int pageSize = 10,
    int offset = 0,
  }) async {
    try {
      final events =
          await _algoliaEventsApi.getEvents(filters, pageSize, offset);
      return right<EventFailure, List<Event>>(events.hits
          .map(
            (doc) => EventDto.fromAlgolia(doc).toDomain(),
          )
          .toList());
    } on AlgoliaError catch (e) {
      _logger.e("Algolia error during fetching events EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  @override
  Future<Either<EventFailure, Event>> getEventById(String eventId) async {
    try {
      final eventDoc = await _firestore.eventCollection.doc(eventId).get();

      if (eventDoc.data() == null) throw InvalidIdError();

      return right<EventFailure, Event>(
          EventDto.fromFirebase(eventDoc).toDomain());
    } on FirebaseException catch (e) {
      _logger.e("Exception during getting event by id EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  @override
  Future<Either<EventFailure, Unit>> toggleEventFavoriteStatus(
      String eventId) async {
    try {
      final userDoc = _getCurrentUserDocument();
      final userSnapshot = await userDoc.get();
      final userFavorites = userSnapshot.get('favoriteEvents') as List<dynamic>;

      userFavorites.contains(eventId)
          ? userFavorites.remove(eventId)
          : userFavorites.add(eventId);

      await userDoc.update({'favoriteEvents': userFavorites});

      return right(unit);
    } on FirebaseException catch (e) {
      _logger
          .e("Exception during toggling event favorite status EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  @override
  Future<Either<EventFailure, List<String>>> getFavoriteEventIds() async {
    final userDoc = _getCurrentUserDocument();
    final userSnapshot = await userDoc.get();

    try {
      final favoriteEventIds = await userSnapshot.get('favoriteEvents');
      return right(List<String>.from(favoriteEventIds));
    } on FirebaseException catch (e) {
      _logger.e("Exception during getting favorite event ids EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  @override
  Future<Either<EventFailure, Unit>> addEvent(Event event) async {
    try {
      final eventDoc = _firestore.eventCollection;
      final eventDto = EventDto.fromDomain(event);

      await eventDoc.doc(event.id).set(eventDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Exception during adding event EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  DocumentReference _getCurrentUserDocument() {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser == null) throw NotAuthenticatedError();

    final userDoc = _firestore.userCollection.doc(firebaseUser.uid);

    return userDoc;
  }
}
