import 'package:algolia/algolia.dart';
import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:raver_events/domain/errors/invalid_id_error.dart';
import 'package:raver_events/domain/errors/not_authenticated_error.dart';
import 'package:raver_events/domain/event_entity.dart';
import 'package:raver_events/domain/event_failure.dart';
import 'package:raver_events/domain/filters/event_filters_entity.dart';
import 'package:raver_events/domain/location_constants.dart';
import 'package:raver_events/infrastructure/algolia_events_api.dart';
import 'package:raver_events/infrastructure/dtos/event_dto.dart';
import 'package:raver_events/infrastructure/firebase_event_facade.dart';
import 'firebase_event_facade_test.mocks.dart';

@GenerateMocks(
    [AlgoliaEventsApi, Logger, AlgoliaQuerySnapshot, AlgoliaObjectSnapshot])
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
    eventDateTime: DateTime(2021, 10, 10),
    attending: 100,
    minAge: 21,
    price: 20,
    allowedOutfit: 'sport',
    musicalGenres: const ['rap'],
    location: const {longitude: 123, latitude: 321},
    cityId: 'cityId',
  );

  final event = eventDto.toDomain();

  final eventDoc = eventDto.toJson();

  final eventId = eventDto.id!;

  group('get event by id', () {
    test('should return event when event with provided id is present',
        () async {
      await firestore.collection('events').doc(eventId).set(eventDoc);
      final expected = right<EventFailure, Event>(event);

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

      final expected = right<EventFailure, Unit>(unit);

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

  group('get favorite event ids', () {
    test('should return favorite event ids if user is present', () async {
      await signInUser();
      final userDoc = firestore.collection('users').doc(userId);
      await userDoc.update({
        'favoriteEvents': [eventId]
      });

      final expected = [eventId];

      final result = await facade.getFavoriteEventIds();

      expect(result.getOrElse(() => []), expected);
    });

    test('should throw not authenticated error when user is not present',
        () async {
      final expected = throwsA(isA<NotAuthenticatedError>());

      final call = facade.getFavoriteEventIds;

      expect(() => call(), expected);
    });
  });

  group('get events', () {
    test('should return events', () async {
      when(algoliaObjects.objectID).thenReturn(eventId);
      when(algoliaObjects.data).thenReturn(eventDoc);
      when(algoliaQuery.hits).thenReturn([algoliaObjects]);
      when(eventsApi.getEvents(EventFilters.empty(), 10, 0))
          .thenAnswer((_) async => algoliaQuery);

      final expected = [event];

      final result = await facade.getEvents(EventFilters.empty());

      expect(result.getOrElse(() => []), expected);
    });
  });

  group('add event', () {
    test('should add event', () async {
      final expected = eventId;

      await facade.addEvent(event);

      final eventSnapshot = await firestore.collection('events').get();
      final result = eventSnapshot.docs.first.id;

      expect(result, expected);
    });
  });
}
