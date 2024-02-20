import 'package:dartz/dartz.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/domain/collectives/collective_failure.dart';
import 'package:tonight/infrastructure/collectives/filters/collective_filters.dart';

abstract class CollectiveFacade {
  // TODO - add pagination
  Future<Either<CollectiveFailure, List<Collective>>> getCollectives(
    CollectiveFilters filters,
  );

  Future<Either<CollectiveFailure, List<Collective>>> getCollectivesForArtist(
    String artistId,
  );
}
