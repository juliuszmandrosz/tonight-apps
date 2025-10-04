import 'package:dartz/dartz.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/domain/artists/artist_failure.dart';
import 'package:tonight/infrastructure/artists/filters/artist_filters.dart';

abstract class ArtistFacade {
  Future<Either<ArtistFailure, List<Artist>>> getArtists(ArtistFilters filters);

  Future<Either<ArtistFailure, List<Artist>>> getResidentsFromCollective(
    String collectiveId,
  );

  Future<Either<ArtistFailure, List<Artist>>> getArtistsByIds(
    List<String> artistIds,
  );
}
