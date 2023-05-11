import 'package:dartz/dartz.dart';
import 'package:tonight/domain/festivals/festival_entity.dart';
import 'package:tonight/domain/festivals/festival_failure.dart';

abstract class FestivalFacade {
  Future<Either<FestivalFailure, List<Festival>>> fetchFestivals({
    int pageSize = 20,
    int offset = 0,
  });
}
