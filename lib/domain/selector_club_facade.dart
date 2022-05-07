import 'package:dartz/dartz.dart';
import 'package:raver_clubs/domain/club_failure.dart';

import 'club_entity.dart';

abstract class SelectorClubFacade {
  Future<Either<ClubFailure, Club>> getCurrentSelectorClub();
}
