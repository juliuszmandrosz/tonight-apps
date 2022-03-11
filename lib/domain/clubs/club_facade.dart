import 'package:dartz/dartz.dart';
import 'package:raver/domain/clubs/filters/club_filters.dart';

import 'club_entity.dart';
import 'failures/club_failure.dart';

abstract class ClubFacade {
  Future<Either<ClubFailure, List<Club>>> getClubs(
    ClubFilters filter, {
    int pageSize = 10,
    int offset = 0,
  });

  Future<Either<ClubFailure, Club>> getClubById(String id);

  Future<Either<ClubFailure, Tuple2<List<String>, String?>>> getClubPhotosUrls({
    required String clubId,
    String? nextPageToken,
    int pageSize = 10,
  });

  Future<Option<ClubFailure>> addClub(Club club);
}
