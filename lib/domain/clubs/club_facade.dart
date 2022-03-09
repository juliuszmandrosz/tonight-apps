import 'package:dartz/dartz.dart';
import 'package:raver/domain/clubs/filters/club_filter.dart';

import 'club_entity.dart';
import 'failures/club_failure.dart';

abstract class ClubFacade {
  Future<Either<ClubFailure, List<Club>>> getClubs(
    ClubFilter filter, {
    int pageSize = 10,
    int offset = 0,
  });

  Future<Either<ClubFailure, Club>> getClubById(String id);

  Future<Either<ClubFailure, List<String>>> getClubPhotosUrls(String clubId);

  Future<Option<ClubFailure>> addClub(Club club);
}
