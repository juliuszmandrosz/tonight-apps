import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';
import 'package:tonight/infrastructure/wall_photos/filters/wall_photo_filters.dart';

abstract class WallPhotoFacade {
  /// Returns photo url
  Future<Either<WallPhotoFailure, String>> uploadPhoto({
    required String eventId,
    required Uint8List photo,
  });

  Future<Either<WallPhotoFailure, Unit>> addWallPhoto(WallPhoto photo);

  Future<Either<WallPhotoFailure, Unit>> deleteWallPhoto(String photoId);

  Future<Either<WallPhotoFailure, List<WallPhoto>>> getWallPhotos({
    required WallPhotoFilters filters,
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

  Future<Either<WallPhotoFailure, Unit>> reportWallPhoto(WallPhoto photo);
}
