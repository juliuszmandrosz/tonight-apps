import 'dart:typed_data';

import 'package:account_settings/domain/user_account_facade.dart';
import 'package:clubs/domain/club/user_club_facade.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:events/domain/events/user_event_facade.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/application/add_wall_photo/aggregator/add_wall_photo_aggregator/add_wall_photo_failure.dart';
import 'package:tonight/application/add_wall_photo/models/wall_photo_venue_model.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';

class AddWallPhotoAggregator {
  final UserClubFacade _clubFacade;
  final UserEventFacade _eventFacade;
  final WallPhotoFacade _wallPhotoFacade;
  final UserAccountFacade _userAccountFacade;

  AddWallPhotoAggregator(
    this._clubFacade,
    this._eventFacade,
    this._wallPhotoFacade,
    this._userAccountFacade,
  );

  Future<Either<AddWallPhotoFailure, List<WallPhotoVenue>>> fetchNearestVenues(
    LatLng userLocation,
  ) async {
    final result = await _clubFacade.fetchNearestClubsInRange(
      userLocation: userLocation,
      radius: 1,
    );
    return result.fold(
      (_) => left(const AddWallPhotoFailure.unexpected()),
      (venues) => right(
        venues.map((venue) => WallPhotoVenue.fromClub(venue)).toList(),
      ),
    );
  }

  Future<Either<AddWallPhotoFailure, List<Event>>> fetchLiveEventsFromVenue(
    String venueId,
  ) async {
    final result = await _eventFacade.fetchLiveEventsFromClub(venueId);
    return result.fold(
      (_) => left(const AddWallPhotoFailure.unexpected()),
      (events) => right(events),
    );
  }

  Future<Either<AddWallPhotoFailure, Unit>> addPhoto({
    required Uint8List photo,
    required WallPhotoVenue venue,
    required Event event,
    required LatLng? photoLocation,
  }) async {
    final userResult = await _userAccountFacade.getUserAccount().first;
    if (userResult.isLeft()) {
      return left(const AddWallPhotoFailure.permissionDenied());
    }
    final uploadPhotoResult = await _wallPhotoFacade.uploadPhoto(
      photo: photo,
      eventId: event.id,
    );
    if (uploadPhotoResult.isLeft()) {
      return left(const AddWallPhotoFailure.cannotUploadPhoto());
    }
    final currentUser = userResult.getRightOrCrash();
    final photoUrl = uploadPhotoResult.getRightOrCrash();
    final wallPhoto = WallPhoto(
      photoUrl: photoUrl,
      venueId: venue.venueId,
      venueName: venue.venueName,
      venueLocation: venue.venueLocation,
      eventId: event.id,
      eventName: event.eventName,
      eventEndDateTime: event.eventEndDateTime,
      photoLocation: photoLocation,
      userId: currentUser.id,
      username: currentUser.username,
      userProfilePhotoUrl: currentUser.profilePictureUrl,
    );
    final addPhotoResult = await _wallPhotoFacade.addWallPhoto(wallPhoto);
    if (addPhotoResult.isLeft()) {
      return left(const AddWallPhotoFailure.unexpected());
    }
    return right(unit);
  }
}
