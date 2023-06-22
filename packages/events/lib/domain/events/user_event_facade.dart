import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class UserEventFacade {
  Future<Either<UserEventFailure, Event>> getEventById(String eventId);

  Future<Either<UserEventFailure, List<Event>>> getEventsByIds(
    List<String> eventIds,
  );

  Future<Either<UserEventFailure, List<Event>>> getFavoriteEvents();

  Future<Either<UserEventFailure, Unit>> toggleEventFavoriteStatus(
      String eventId);

  Future<Either<UserEventFailure, List<Event>>> fetchLiveEventsFromClub(
    String clubId,
  );

  Future<Either<UserEventFailure, List<Event>>> fetchTonightEvents({
    required EventFilters filters,
    int pageSize = 20,
    int offset = 0,
  });

  Future<Either<UserEventFailure, DateTime?>> getNearestEventStartDateTime(
    Option<LatLng> userLocation,
  );
}
