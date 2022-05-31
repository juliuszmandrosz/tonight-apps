import 'package:algolia/algolia.dart';
import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'firebase_event_facade_test.mocks.dart';

@GenerateMocks([
  AlgoliaEventsApi,
  Logger,
  AlgoliaQuerySnapshot,
  AlgoliaObjectSnapshot,
])
void main() {
  late MockFirebaseAuth auth;
  late MockUser user;
  late FakeFirebaseFirestore firestore;
  late FirebaseEventFacade facade;
  late MockAlgoliaEventsApi eventsApi;
  late MockLogger logger;
  late MockAlgoliaQuerySnapshot algoliaQuery;
  late MockAlgoliaObjectSnapshot algoliaObjects;

  const userId = '321';

  setUp(() async {
    user = MockUser(
      isAnonymous: false,
      uid: userId,
      email: 'test@test.com',
      displayName: 'user',
    );

    auth = MockFirebaseAuth(mockUser: user);
    firestore = FakeFirebaseFirestore();
    eventsApi = MockAlgoliaEventsApi();
    logger = MockLogger();
    algoliaQuery = MockAlgoliaQuerySnapshot();
    algoliaObjects = MockAlgoliaObjectSnapshot();

    facade = FirebaseEventFacade(
      firebaseAuth: auth,
      firestore: firestore,
      algoliaEventsApi: eventsApi,
      logger: logger,
    );
  });

  signInUser() async {
    await auth.signInWithEmailAndPassword(
      email: 'test@test.com',
      password: '123',
    );

    await firestore.collection('users').doc(userId).set({
      'email': 'test@test.com',
      'favoriteEvents': [],
    });
  }

  final eventDto = EventDto(
    id: '123',
    clubId: 'clubId',
    eventName: 'eventName',
    clubName: 'clubName',
    eventStartDateTime: DateTime(2021, 10, 10),
    eventEndDateTime: DateTime(2021, 10, 11),
    attending: 100,
    minAge: 21,
    price: 20,
    currency: 'pln',
    allowedOutfit: 'sport',
    musicalGenres: const ['rap'],
    location: const {longitude: 123, latitude: 321},
    cityId: 'cityId',
    eventPhotoUrl: '',
  );

  final eventTicketDto = EventTicketsDto(
    eventId: eventDto.id,
    ticketPools: [],
    ticketSales: const TicketSalesDto(currency: 'pln'),
    ticketQuantity: 10,
  );

  final event = eventDto.toDomain();

  final eventTicket = eventTicketDto.toDomain();

  final eventDoc = eventDto.toJson();

  final eventId = eventDto.id!;

  group('get event by id', () {
    test('should return event when event with provided id is present',
        () async {
      await firestore.collection('events').doc(eventId).set(eventDoc);
      final expected = right<UserEventFailure, Event>(event);

      final result = await facade.getEventById(eventId);

      expect(result, expected);
    });

    test(
        'should throw invalid id error when event with provided id is not present',
        () async {
      final expected = throwsA(isA<InvalidIdError>());

      final call = facade.getEventById;

      expect(() => call(eventId), expected);
    });
  });

  group('toggle event favorite status', () {
    test('should return unit when current user is present', () async {
      await signInUser();

      final expected = right<UserEventFailure, Unit>(unit);

      final result = await facade.toggleEventFavoriteStatus(eventId);

      expect(result, expected);
    });

    test(
        'should throw not authenticated error when current user is not present',
        () async {
      final expected = throwsA(isA<NotAuthenticatedError>());

      final call = facade.toggleEventFavoriteStatus;

      expect(() => call(eventId), expected);
    });

    test('should add event to favorites', () async {
      await signInUser();
      final expected = [eventId];

      await facade.toggleEventFavoriteStatus(eventId);
      final userSnapshot =
          await firestore.collection('users').doc(userId).get();
      final result = userSnapshot.get('favoriteEvents');

      expect(result, expected);
    });

    test('should remove event from favorites', () async {
      await signInUser();
      final expected = [];
      final userDoc = firestore.collection('users').doc(userId);
      userDoc.update({
        'favoriteEvents': [eventId]
      });

      await facade.toggleEventFavoriteStatus(eventId);
      final userSnapshot = await userDoc.get();
      final result = userSnapshot.get('favoriteEvents');

      expect(result, expected);
    });
  });

  group('get events', () {
    test('should return events', () async {
      final now = DateTime.now();
      final filters = EventFilters.empty().copyWith(
          dateRangeFilter: DateRangeFilter(fromDate: now, toDate: null));
      when(algoliaObjects.objectID).thenReturn(eventId);
      when(algoliaObjects.data).thenReturn(eventDoc);
      when(algoliaQuery.hits).thenReturn([algoliaObjects]);
      when(
        eventsApi.getEvents(filters, SortModel.empty(), 10, 0),
      ).thenAnswer((_) async => algoliaQuery);

      final expected = [event];

      final result = await facade.getEvents(filters, SortModel.empty());

      expect(result.getOrElse(() => []), expected);
    });
  });

  group('add event', () {
    test('should add event', () async {
      final expected = eventId;

      await facade.addEvent(event, eventTicket);

      final eventSnapshot = await firestore.collection('events').get();
      final result = eventSnapshot.docs.first.id;

      expect(result, expected);
    });
  });

  group('add event', () {
    test('should update event', () async {
      await firestore.collection('events').doc(eventId).set(eventDoc);

      final expected = event;

      await facade.updateEvent(event);

      final eventSnapshot = await firestore.collection('events').get();
      final result = EventDto.fromFirebase(eventSnapshot.docs.first).toDomain();

      expect(result, expected);
    });
  });
}
