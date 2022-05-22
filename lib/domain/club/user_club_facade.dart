import 'package:dartz/dartz.dart';
import 'package:raver_clubs/domain/club/failures/user_club_failure.dart';
import 'package:raver_clubs/infrastructure/filters/club_filters_entity.dart';

import 'club_entity.dart';

abstract class UserClubFacade {
  Future<Either<UserClubFailure, Club>> getClubById(String id);

  Future<Either<UserClubFailure, List<Club>>> getClubs(
    ClubFilters filter, {
    int pageSize = 20,
    int offset = 0,
  });

  Future<Either<UserClubFailure, List<Club>>> getClubsByIds(
      List<String> clubIds);

  Future<Either<UserClubFailure, Tuple2<List<String>, String?>>>
      getClubPhotosUrlsAsUser({
    required String clubId,
    String? nextPageToken,
    int pageSize = 20,
  });

  Future<Either<UserClubFailure, Unit>> toggleClubFavoriteStatus(String clubId);
}
