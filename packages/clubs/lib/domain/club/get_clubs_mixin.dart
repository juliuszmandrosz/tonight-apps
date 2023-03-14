import 'package:dartz/dartz.dart';
import 'package:clubs/domain/club/club_entity.dart';
import 'package:clubs/domain/club/failures/common_club_failure.dart';
import 'package:clubs/infrastructure/filters/club_filters_entity.dart';

mixin GetClubsMixin {
  Future<Either<CommonClubFailure, List<Club>>> getClubs(
    ClubFilters filter, {
    int pageSize = 20,
    int offset = 0,
  });
}
