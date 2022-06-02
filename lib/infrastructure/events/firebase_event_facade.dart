import 'dart:io';

import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_events/domain/filters/filter/date_includes_filter.dart';
import 'package:raver_events/infrastructure/algolia_events_api.dart';
import 'package:raver_events/infrastructure/event_costs/dtos/event_costs_dto.dart';
import 'package:raver_events/infrastructure/event_review/dtos/event_review_dto.dart';
import 'package:raver_events/infrastructure/events/dtos/event_dto.dart';
import 'package:raver_events/infrastructure/event_tickets/dtos/event_tickets_dto.dart';

class FirebaseEventFacade
    implements
        CommonEventFacade,
        SelectorEventFacade,
        PartnerEventFacade,
        UserEventFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final AlgoliaEventsApi _algoliaEventsApi;
  final Logger _logger;

  FirebaseEventFacade({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
    required FirebaseStorage storage,
    required AlgoliaEventsApi algoliaEventsApi,
    required Logger logger,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore,
        _storage = storage,
        _algoliaEventsApi = algoliaEventsApi,
        _logger = logger;

  @override
  Future<Either<CommonEventFailure, List<Event>>> getEvents(
    EventFilters filters,
    SortModel sortModel, {
    int pageSize = 20,
    int offset = 0,
  }) async {
    try {
      final events = await _algoliaEventsApi.getEvents(
          filters, sortModel, pageSize, offset);
      return right<CommonEventFailure, List<Event>>(events.hits
          .map(
            (doc) => EventDto.fromAlgolia(doc).toDomain(),
          )
          .toList());
    } on AlgoliaError catch (e) {
      _logger.e("Algolia error during fetching events EXCEPTION: $e");
      return left(const CommonEventFailure.unexpected());
    }
  }

  @override
  Future<Either<UserEventFailure, Event>> getEventById(String eventId) async {
    try {
      final eventDoc = await _firestore.eventCollection.doc(eventId).get();

      if (eventDoc.data() == null) throw InvalidIdError();

      return right<UserEventFailure, Event>(
          EventDto.fromFirebase(eventDoc).toDomain());
    } on FirebaseException catch (e) {
      _logger.e("Exception during getting event by id EXCEPTION: $e");
      return left(const UserEventFailure.unexpected());
    }
  }

  @override
  Future<Either<UserEventFailure, Unit>> toggleEventFavoriteStatus(
      String eventId) async {
    try {
      final userRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
      final userDoc = await userRef.get();
      final userFavorites = userDoc.get('favoriteEventIds') as List<dynamic>;

      userFavorites.contains(eventId)
          ? userFavorites.remove(eventId)
          : userFavorites.add(eventId);

      await userRef.update({'favoriteEventIds': userFavorites});

      return right(unit);
    } on FirebaseException catch (e) {
      _logger
          .e("Exception during toggling event favorite status EXCEPTION: $e");
      return left(const UserEventFailure.unexpected());
    }
  }

  @override
  Future<Either<UserEventFailure, List<Event>>> getEventsByIds(
    List<String> eventIds,
  ) async {
    try {
      final result = await _getEventsByIdsFromFirestore(eventIds);

      return right(result);
    } on FirebaseException catch (e) {
      _logger.e("Exception during fetching events by ids EXCEPTION: $e");
      return left(const UserEventFailure.unexpected());
    }
  }

  @override
  Future<Either<PartnerEventFailure, Unit>> addEvent(
    Event event,
    EventTickets eventTickets,
  ) async {
    try {
      final eventDoc = _firestore.eventCollection.doc(event.id);
      final clubDoc = _firestore.clubCollection.doc(event.clubId);

      final eventTicketDoc = clubDoc.eventTickets.doc(event.id);
      final eventCostsDoc = clubDoc.eventCosts.doc(event.id);
      final eventReviewDoc = clubDoc.eventReview.doc(event.id);

      final eventDto = EventDto.fromDomain(event);
      final eventTicketsDto = EventTicketsDto.fromDomain(eventTickets);
      final eventCostsDto = EventCostsDto(
        eventId: event.id,
        currency: event.currency,
      );
      final eventReviewDto = EventReviewDto(eventId: event.id);

      await eventDoc.set(eventDto.toJson());
      await eventTicketDoc.set(eventTicketsDto.toJson());
      await eventCostsDoc.set(eventCostsDto.toJson());
      await eventReviewDoc.set(eventReviewDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Exception during adding event EXCEPTION: $e");
      return left(const PartnerEventFailure.unexpected());
    }
  }

  @override
  Future<Either<PartnerEventFailure, Unit>> updateEvent(Event event) async {
    try {
      final eventDocRef = _firestore.eventCollection.doc(event.id);

      return _firestore.runTransaction<Either<PartnerEventFailure, Unit>>(
          (transaction) async {
        final eventDoc = await transaction.get(eventDocRef);

        if (!eventDoc.exists) throw InvalidIdError();

        final eventDto = EventDto.fromDomain(event);

        transaction.update(eventDocRef, eventDto.toJson());

        return right(unit);
      });
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during updating event EXCEPTION: $e");
      return Future.value(
        left<PartnerEventFailure, Unit>(
          const PartnerEventFailure.unexpected(),
        ),
      );
    }
  }

  @override
  Future<Either<SelectorEventFailure, Option<Event>>>
      getCurrentEventFromClubAsSelector() async {
    try {
      final selectorDoc =
          await _firestore.getCurrentSelectorDocRef(_firebaseAuth).get();
      final clubId = selectorDoc.get('clubId');

      final selectorClubDocRef = _firestore.clubCollection.doc(clubId);

      final clubSelectorDoc =
          await selectorClubDocRef.selectors.doc(selectorDoc.id).get();

      if (!clubSelectorDoc.exists) {
        return left(const SelectorEventFailure.noAccess());
      }

      final filters = EventFilters.empty().copyWith(
        clubFilter: ClubFilter(clubId: clubId),
        showOnlyFilter: ShowOnlyFilter(showOnlyLive: true),
        dateRangeFilter: DateRangeFilter(fromDate: null, toDate: null),
      );

      final result =
          await _algoliaEventsApi.getEvents(filters, SortModel.empty(), 1, 0);

      if (result.empty) return right(none());

      final currentEvent = result.hits.first;

      return right<SelectorEventFailure, Option<Event>>(
        some(EventDto.fromAlgolia(currentEvent).toDomain()),
      );
    } on AlgoliaError catch (e) {
      _logger.e(
        "Algolia error during getting "
        "current event from club EXCEPTION: $e",
      );
      return left(const SelectorEventFailure.unexpected());
    }
  }

  @override
  Future<Either<PartnerEventFailure, Option<Event>>>
      getEventInDateRangeForCurrentPartner(
    DateTime fromDate,
    DateTime toDate,
  ) async {
    try {
      final clubDocRef =
          await _firestore.getCurrentPartnerClubDocRef(_firebaseAuth);

      final clubDoc = await clubDocRef.get();

      final filters = EventFilters.empty().copyWith(
        clubFilter: ClubFilter(clubId: clubDoc.id),
        dateIncludesFilter: DateIncludesFilter(
          fromDate: fromDate,
          toDate: toDate,
        ),
      );

      final result =
          await _algoliaEventsApi.getEvents(filters, SortModel.empty(), 1, 0);

      if (result.empty) return right(none());

      final currentEvent = result.hits.first;

      return right<PartnerEventFailure, Option<Event>>(
        some(EventDto.fromAlgolia(currentEvent).toDomain()),
      );
    } on AlgoliaError catch (e) {
      _logger.e(
        "Algolia error during getting "
        "event in date range for current partner EXCEPTION: $e",
      );
      return left(const PartnerEventFailure.unexpected());
    }
  }

  @override
  Future<Either<UserEventFailure, List<Event>>> getFavoriteEvents() async {
    try {
      final userDoc =
          await _firestore.getCurrentUserDocRef(_firebaseAuth).get();

      final favoriteEventIds =
          await userDoc.get('favoriteEventIds') as List<dynamic>;

      final result = await _getEventsByIdsFromFirestore(favoriteEventIds);

      return right(result);
    } on FirebaseException catch (e) {
      _logger.e('Exception getting favorite events EXCEPTION: $e');
      return left(const UserEventFailure.unexpected());
    }
  }

  @override
  Future<Either<PartnerEventFailure, String>> uploadEventPhoto(
    String eventId,
    File photo,
  ) async {
    try {
      final storageRef = _storage.ref('events/$eventId/');
      final uploadTask = await storageRef.putFile(photo);
      final result = await uploadTask.ref.getDownloadURL();
      return right(result);
    } on FirebaseException catch (e) {
      _logger.e('Exception uploading event photo EXCEPTION: $e');
      return left(const PartnerEventFailure.unexpected());
    }
  }

  Future<List<Event>> _getEventsByIdsFromFirestore(
      List<dynamic> eventIds) async {
    final result = <Event>[];

    while (eventIds.isNotEmpty) {
      final chunkSize = eventIds.length >= 10 ? 10 : eventIds.length;

      final eventIdsChunk = eventIds.getRange(0, chunkSize).toList();

      final eventsQuery = _firestore.eventCollection
          .where(FieldPath.documentId, whereIn: eventIdsChunk);

      final eventDocsChunk = await eventsQuery.get();

      final eventsChunk = eventDocsChunk.docs
          .map((doc) => EventDto.fromFirebase(doc).toDomain())
          .toList();

      result.addAll(eventsChunk);

      eventIds.removeRange(0, chunkSize);
    }

    return result;
  }
}
