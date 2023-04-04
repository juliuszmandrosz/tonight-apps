import 'package:dartz/dartz.dart';
import 'package:tonight/domain/photo_wall/photo_wall_entity.dart';
import 'package:tonight/domain/photo_wall/photo_wall_failure.dart';

abstract class PhotoWallFacade {
  Future<Either<PhotoWallFailure, Unit>> addPhoto(PhotoWall photoWall);

  Future<Either<PhotoWallFailure, List<PhotoWall>>> getPhotos({
    int pageSize = 20,
    int offset = 0,
  });
}
