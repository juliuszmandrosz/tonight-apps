import 'package:clubs/domain/club/club_entity.dart';
import 'package:common/constants/constants.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'wall_photo_venue_model.freezed.dart';

@freezed
class WallPhotoVenue with _$WallPhotoVenue {
  const factory WallPhotoVenue({
    required String venueId,
    required String venueName,
    required LatLng venueLocation,
    String? venuePhotoUrl,
  }) = _WallPhotoVenue;

  factory WallPhotoVenue.fromClub(Club club) => WallPhotoVenue(
        venueId: club.id,
        venueName: club.clubName,
        venueLocation: LatLng(
          club.location[latitude]!,
          club.location[longitude]!,
        ),
        venuePhotoUrl: club.clubImageUrl,
      );

  factory WallPhotoVenue.fromEvent(Event event) => WallPhotoVenue(
        venueId: event.clubId,
        venueName: event.clubName,
        venueLocation: LatLng(
          event.location[latitude]!,
          event.location[longitude]!,
        ),
        venuePhotoUrl: event.clubPhotoUrl,
      );
}
