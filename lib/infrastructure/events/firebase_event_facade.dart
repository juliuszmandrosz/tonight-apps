import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/domain/events/event_facade.dart';
import 'package:raver/domain/events/event_failure.dart';
import 'package:raver/domain/events/filters/event_filter.dart';
import 'package:raver/infrastructure/core/algolia_api.dart';
import 'package:raver/infrastructure/core/firestore_helpers.dart';
import 'package:raver/infrastructure/events/dtos/event_dto.dart';

class FirebaseEventFacade implements EventFacade {
  final FirebaseFirestore _firestore;
  final AlgoliaAPI _algoliaAPI;
  final Logger _logger;

  final String eventsIndex = 'events';
  final String favoriteEventsIndex = 'favoriteEvents';

  FirebaseEventFacade({
    required FirebaseFirestore firestore,
    required AlgoliaAPI algoliaAPI,
    required Logger logger,
  })  : _firestore = firestore,
        _algoliaAPI = algoliaAPI,
        _logger = logger;

  @override
  Future<Either<EventFailure, List<Event>>> getEvents(EventFilter filters, {
    int pageSize = 10,
    int offset = 0,
  }) async {
    try {
      String? text;
      filters.mapOrNull((value) => text = value.phrase);

      var events =
          await _algoliaAPI.search(text, eventsIndex, pageSize, offset);

      return right<EventFailure, List<Event>>(events.hits
          .map(
            (doc) => EventDto.fromAlgolia(doc).toDomain(),
          )
          .toList());
    } on AlgoliaError catch (e) {
      _logger.e("Algolia exception during fetching events EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  @override
  Future<Either<EventFailure, Event>> getEventById(String eventId) async {
    try {
      final eventDoc = await _firestore.eventCollection.doc(eventId).get();

      return right(EventDto.fromFirebase(eventDoc).toDomain());
    } on FirebaseException catch (e) {
      _logger.e("Exception during getting event by id EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  @override
  Future<Either<EventFailure, Unit>> toggleEventFavoriteStatus(String eventId) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userSnapshot = await userDoc.get();
      final userFavorites =
          userSnapshot.get(favoriteEventsIndex) as List<dynamic>;

      userFavorites.any((id) => id == eventId)
          ? userFavorites.remove(eventId)
          : userFavorites.add(eventId);

      userDoc.update({favoriteEventsIndex: userFavorites});

      return right(unit);
    } on FirebaseException catch (e) {
      _logger
          .e("Exception during toggling event favorite status EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  @override
  Future<Either<EventFailure, List<String>>> getFavoriteEventIds() async {
    final userDoc = await _firestore.userDocument();
    final userDocSnapshot = await userDoc.get();

    try {
      final favoriteEventIds = await userDocSnapshot.get(favoriteEventsIndex);
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
}
