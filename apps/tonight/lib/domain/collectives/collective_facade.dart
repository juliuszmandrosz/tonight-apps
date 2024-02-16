import 'package:dartz/dartz.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/domain/collectives/collective_failure.dart';

abstract class CollectiveFacade {
  Future<Either<CollectiveFailure, List<Collective>>> getCollectives();

  Future<Either<CollectiveFailure, List<Collective>>> getCollectivesForArtist(
    String artistId,
  );
}
