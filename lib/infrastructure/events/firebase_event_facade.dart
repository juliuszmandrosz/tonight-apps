import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_events/domain/filters/filter/date_includes_filter.dart';
import 'package:raver_events/infrastructure/event_cloud_functions/event_cloud_functions_errors.dart';
import 'package:raver_events/infrastructure/event_cloud_functions/event_cloud_functions_facade.dart';
import 'package:raver_events/infrastructure/event_costs/dtos/event_costs_dto.dart';
import 'package:raver_events/infrastructure/event_review/dtos/event_review_dto.dart';
import 'package:raver_events/infrastructure/events/dtos/applied_discount_dto.dart';
import 'package:raver_events/infrastructure/events/dtos/event_dto.dart';
import 'package:raver_events/infrastructure/event_tickets/dtos/event_tickets_dto.dart';
import 'package:raver_events/infrastructure/typesense_events_api.dart';

class FirebaseEventFacade
    implements
        CommonEventFacade,
        SelectorEventFacade,
        PartnerEventFacade,
        UserEventFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final TypesenseEventsApi _typesenseEventsApi;
  final EventCloudFunctionsFacade _eventCloudFunctionsFacade;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseEventFacade({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
    required FirebaseStorage storage,
    required TypesenseEventsApi typesenseEventsApi,
    required EventCloudFunctionsFacade eventCloudFunctionsFacade,
    required FirebaseCrashlytics crashlytics,
    required Logger logger,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore,
        _storage = storage,
        _typesenseEventsApi = typesenseEventsApi,
        _eventCloudFunctionsFacade = eventCloudFunctionsFacade,
        _crashlytics = crashlytics,
        _logger = logger;

  @override
  Future<Either<CommonEventFailure, List<Event>>> getEvents(
    EventFilters filters,
    SortModel sortModel, {
    int pageSize = 20,
    int offset = 0,
  }) async {
    try {
      final result = await _typesenseEventsApi.getEvents(
        filters,
        sortModel,
        pageSize,
        offset,
      );

      if (result['found'] == 0) {
        return right([]);
      }

      final events = result['hits'] as List<dynamic>;

      return right<CommonEventFailure, List<Event>>(
        events.map((doc) => EventDto.fromTypesense(doc).toDomain()).toList(),
      );
    } on Exception catch (e) {
      _logger.e('Typesense exception  fetching events EXCEPTION: $e');
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const CommonEventFailure.unexpected());
    }
  }

  @override
  Future<Either<UserEventFailure, Event>> getEventById(String eventId) async {
    try {
      final eventDoc = await _firestore.eventCollection.doc(eventId).get();

      if (eventDoc.data() == null) throw InvalidIdError();

      return right<UserEventFailure, Event>(
        EventDto.fromFirebase(eventDoc).toDomain(),
      );
    } on FirebaseException catch (e) {
      _logger.e("Exception during getting event by id EXCEPTION: $e");
      await _crashlytics.recordError(e, StackTrace.current);
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
      await _crashlytics.recordError(e, StackTrace.current);
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
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const UserEventFailure.unexpected());
    }
  }

  @override
  Future<Either<PartnerEventFailure, Unit>> addEvent({
    required Event event,
    required EventTickets eventTickets,
    required Option<String> appliedDiscountId,
  }) async {
    try {
      final eventDocRef = _firestore.eventCollection.doc(event.id);
      final clubDocRef = _firestore.clubCollection.doc(event.clubId);

      final eventTicketDoc = clubDocRef.eventTickets.doc(event.id);
      final eventCostsDoc = clubDocRef.eventCosts.doc(event.id);
      final eventReviewDoc = clubDocRef.eventReview.doc(event.id);

      final eventDto = EventDto.fromDomain(event);
      final eventTicketsDto = EventTicketsDto.fromDomain(eventTickets);
      final eventCostsDto = EventCostsDto(
        eventId: event.id,
        currency: event.currency,
      );

      final eventReviewDto = EventReviewDto(eventId: event.id);

      final eventInDateRange = await getEventInDateRangeForCurrentPartner(
          event.eventStartDateTime, event.eventEndDateTime);

      if (eventInDateRange.isLeft()) {
        return left(const PartnerEventFailure.unexpected());
      }

      if (eventInDateRange.getRightOrCrash().isSome()) {
        return left(const PartnerEventFailure.eventExistsInDateRange());
      }

      if (appliedDiscountId.isSome()) {
        final appliedDiscountDocRef =
            clubDocRef.appliedDiscounts.doc(appliedDiscountId.getOrCrash());

        final appliedDiscountDoc = await appliedDiscountDocRef.get();

        if (appliedDiscountDoc.exists) {
          return left(const PartnerEventFailure.discountAlreadyApplied());
        }

        final appliedDiscountDto = AppliedDiscountDto(
          eventId: event.id,
          realizationDateTime: DateTime.now(),
        );

        await appliedDiscountDocRef.set(appliedDiscountDto.toJson());
      }

      await eventDocRef.set(eventDto.toJson());
      await eventTicketDoc.set(eventTicketsDto.toJson());
      await eventCostsDoc.set(eventCostsDto.toJson());
      await eventReviewDoc.set(eventReviewDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Exception during adding event EXCEPTION: $e");
      await _crashlytics.recordError(e, StackTrace.current);
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
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const PartnerEventFailure.unexpected());
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
          await _typesenseEventsApi.getEvents(filters, SortModel.empty(), 1, 0);

      if (result['found'] == 0) return right(none());

      final currentEvent = (result['hits'] as List<dynamic>)[0];

      return right<SelectorEventFailure, Option<Event>>(
        some(EventDto.fromTypesense(currentEvent).toDomain()),
      );
    } on Exception catch (e) {
      _logger.e(
        'Typesense exception getting current event from club EXCEPTION: $e',
      );
      await _crashlytics.recordError(e, StackTrace.current);
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
          await _typesenseEventsApi.getEvents(filters, SortModel.empty(), 1, 0);

      if (result['found'] == 0) return right(none());

      final currentEvent = (result['hits'] as List<dynamic>)[0];

      return right<PartnerEventFailure, Option<Event>>(
        some(EventDto.fromTypesense(currentEvent).toDomain()),
      );
    } on Exception catch (e) {
      _logger.e(
        'Typesense exception getting event in date range for current partner EXCEPTION: $e',
      );
      await _crashlytics.recordError(e, StackTrace.current);
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
      await _crashlytics.recordError(e, StackTrace.current);
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
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const PartnerEventFailure.unexpected());
    }
  }

  @override
  Future<Either<PartnerEventFailure, Unit>> cancelEvent(String eventId) async {
    try {
      final result = await _eventCloudFunctionsFacade.cancelEvent(eventId);
      return right(result);
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception canceling event EXCEPTION: $e",
      );

      return left(await _handleFirebaseFunctionsException(e));
    }
  }

  @override
  Future<Either<PartnerEventFailure, Unit>> postponeEvent({
    required String eventId,
    required DateTime newEventStartDateTime,
    required DateTime newEventEndDateTime,
  }) async {
    try {
      final result = await _eventCloudFunctionsFacade.postponeEvent(
        eventId: eventId,
        newEventStartTimestamp: Timestamp.fromDate(newEventStartDateTime),
        newEventEndTimestamp: Timestamp.fromDate(newEventEndDateTime),
      );

      return right(result);
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception postponing event EXCEPTION: $e",
      );

      return left(await _handleFirebaseFunctionsException(e));
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

  Future<PartnerEventFailure> _handleFirebaseFunctionsException(
    FirebaseFunctionsException exception,
  ) async {
    final failure = eventCloudFunctionsErrors[exception.details];

    if (failure != null) {
      return failure;
    }

    await _crashlytics.recordError(exception, StackTrace.current);
    return const PartnerEventFailure.unexpected();
  }
}
