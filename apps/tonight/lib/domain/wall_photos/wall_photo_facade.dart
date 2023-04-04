import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';

abstract class WallPhotoFacade {
  Future<Either<WallPhotoFailure, Unit>> addPhoto({
    required String clubId,
    required String clubName,
    required String eventId,
    required String eventName,
    required DateTime eventEndDateTime,
    required Uint8List photo,
  });

  Future<Either<WallPhotoFailure, List<WallPhoto>>> getPhotos({
    int pageSize = 20,
    int offset = 0,
  });
}
