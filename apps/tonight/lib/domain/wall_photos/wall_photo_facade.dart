import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';

abstract class WallPhotoFacade {
  Future<Either<WallPhotoFailure, Unit>> addPhoto({
    required String venueId,
    required String venueName,
    required LatLng venueLocation,
    required String eventId,
    required String eventName,
    required DateTime eventEndDateTime,
    required Uint8List photo,
    required LatLng? photoLocation,
  });

  Future<Either<WallPhotoFailure, List<WallPhoto>>> getWallPhotos({
    required Option<LatLng> userLocation,
    int pageSize = 20,
    int offset = 0,
  });

  Future<Either<WallPhotoFailure, List<WallPhoto>>> getUserPhotos({
    WallPhoto? lastPhoto,
    int pageSize = 20,
  });

  Future<Either<WallPhotoFailure, List<WallPhoto>>> getEventPhotos({
    required String eventId,
    WallPhoto? lastPhoto,
    int pageSize = 20,
  });
}
