import 'package:dartz/dartz.dart';
import 'package:raver_clubs/domain/club/club_entity.dart';
import 'package:raver_clubs/domain/club/failures/common_club_failure.dart';
import 'package:raver_clubs/infrastructure/filters/club_filters_entity.dart';

mixin GetClubsMixin {
  Future<Either<CommonClubFailure, List<Club>>> getClubs(
    ClubFilters filter, {
    int pageSize = 20,
    int offset = 0,
  });
}
