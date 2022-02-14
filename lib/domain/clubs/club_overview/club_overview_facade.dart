import 'package:dartz/dartz.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_entity.dart';
import 'package:raver/domain/clubs/filters/club_filter.dart';

import 'club_failure.dart';

abstract class ClubOverviewFacade {
  Future<Either<ClubFailure, List<ClubOverview>>> getClubs(ClubFilter filter);
}
