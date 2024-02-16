import 'package:dartz/dartz.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/domain/artists/artist_failure.dart';

abstract class ArtistFacade {
  Future<Either<ArtistFailure, List<Artist>>> getArtists();

  Future<Either<ArtistFailure, List<Artist>>> getResidentsForCollective(
    String collectiveId,
  );
}
