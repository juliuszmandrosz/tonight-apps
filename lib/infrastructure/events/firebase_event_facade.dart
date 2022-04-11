import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_events/domain/selector_event_facade.dart';
import 'package:raver_events/infrastructure/algolia_events_api.dart';
import 'package:raver_events/infrastructure/events/dtos/event_dto.dart';
import 'package:raver_events/infrastructure/event_tickets/dtos/event_tickets_dto.dart';

class FirebaseEventFacade implements EventFacade, SelectorEventFacade {
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
    EventFilters filters,
    SortModel sortModel, {
    int pageSize = 10,
    int offset = 0,
  }) async {
    try {
      final events = await _algoliaEventsApi.getEvents(
          filters, sortModel, pageSize, offset);
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
      final userDoc = await _getCurrentUserDocument();
      final userRef = _getCurrentUserReference();
      final userFavorites = userDoc.get('favoriteEvents') as List<dynamic>;

      userFavorites.contains(eventId)
          ? userFavorites.remove(eventId)
          : userFavorites.add(eventId);

      await userRef.update({'favoriteEvents': userFavorites});

      return right(unit);
    } on FirebaseException catch (e) {
      _logger
          .e("Exception during toggling event favorite status EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  @override
  Future<Either<EventFailure, List<String>>> getFavoriteEventIds() async {
    final userDoc = await _getCurrentUserDocument();

    try {
      final favoriteEventIds = await userDoc.get('favoriteEvents');
      return right(List<String>.from(favoriteEventIds));
    } on FirebaseException catch (e) {
      _logger.e("Exception during getting favorite event ids EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  @override
  Future<Either<EventFailure, Unit>> addEvent(
    Event event,
    EventTickets eventTickets,
  ) async {
    try {
      final eventDoc = _firestore.eventCollection.doc(event.id);
      final clubDoc = _firestore.clubCollection.doc(event.clubId);
      final eventTicketDoc = clubDoc.eventTickets.doc(event.id);

      final eventDto = EventDto.fromDomain(event);
      final eventTicketsDto = EventTicketsDto.fromDomain(eventTickets);

      await eventDoc.set(eventDto.toJson());
      await eventTicketDoc.set(eventTicketsDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Exception during adding event EXCEPTION: $e");
      return left(const EventFailure.unexpected());
    }
  }

  @override
  Future<Either<EventFailure, Unit>> updateEvent(Event event) async {
    final eventDocRef = _firestore.eventCollection.doc(event.id);

    return _firestore
        .runTransaction<Either<EventFailure, Unit>>((transaction) async {
      final eventDoc = await transaction.get(eventDocRef);

      if (!eventDoc.exists) throw InvalidIdError();

      final eventDto = EventDto.fromDomain(event);

      transaction.update(eventDocRef, eventDto.toJson());

      return right(unit);
    }).catchError((e) {
      if (e is FirebaseException) {
        _logger.e("Firebase Exception during updating event EXCEPTION: $e");
        return left<EventFailure, Unit>(
          const EventFailure.unexpected(),
        );
      }
    });
  }

  @override
  Future<Either<EventFailure, Option<Event>>>
      getCurrentEventFromClubAsSelector() async {
    try {
      final selectorDoc = await _getCurrentSelectorDocument();
      final clubId = selectorDoc.get('clubId');

      final filters = EventFilters.empty().copyWith(
        clubFilter: ClubFilter(clubId: clubId),
        showOnlyFilter: ShowOnlyFilter(showOnlyLive: true),
      );

      final result =
          await _algoliaEventsApi.getEvents(filters, SortModel.empty(), 1, 0);

      if (result.empty) return right(none());

      final currentEvent = result.hits.first;

      return right<EventFailure, Option<Event>>(
        some(EventDto.fromAlgolia(currentEvent).toDomain()),
      );
    } on FirebaseException catch (e) {
      _logger.e(
        "Exception during getting "
        "current event from club EXCEPTION: $e",
      );
      return left(const EventFailure.unexpected());
    }
  }

  Future<DocumentSnapshot> _getCurrentUserDocument() async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser == null) throw NotAuthenticatedError();

    final userDoc = await _firestore.userCollection.doc(firebaseUser.uid).get();

    return userDoc;
  }

  DocumentReference _getCurrentUserReference() {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser == null) throw NotAuthenticatedError();

    final userDoc = _firestore.userCollection.doc(firebaseUser.uid);

    return userDoc;
  }

  Future<DocumentSnapshot> _getCurrentSelectorDocument() async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser == null) throw NotAuthenticatedError();

    final selectorDoc =
        await _firestore.selectorsCollection.doc(firebaseUser.uid).get();

    return selectorDoc;
  }
}
