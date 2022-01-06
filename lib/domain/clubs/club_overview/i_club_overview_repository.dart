import 'package:dartz/dartz.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_entity.dart';
import 'package:raver/infrastructure/clubs/clubs_overview/filters/club_filter.dart';
import 'club_failure.dart';

abstract class IClubOverviewRepository{
  Future<Either<ClubFailure, List<ClubOverview>>> getClubs(ClubFilter filter);
}