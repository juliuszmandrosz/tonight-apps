import 'package:dartz/dartz.dart';
import 'package:clubs/domain/club/failures/user_club_failure.dart';
import 'package:clubs/domain/club/get_clubs_mixin.dart';

import 'club_entity.dart';

abstract class UserClubFacade with GetClubsMixin {
  Future<Either<UserClubFailure, Club>> getClubById(String id);

  Future<Either<UserClubFailure, List<Club>>> getClubsByIds(
    List<String> clubIds,
  );

  Future<Either<UserClubFailure, List<Club>>> getFavoriteClubs();

  Future<Either<UserClubFailure, Tuple2<List<String>, String?>>>
      getClubPhotosUrlsAsUser({
    required String clubId,
    String? nextPageToken,
    int pageSize = 20,
  });

  Future<Either<UserClubFailure, Unit>> toggleClubFavoriteStatus(String clubId);
}
