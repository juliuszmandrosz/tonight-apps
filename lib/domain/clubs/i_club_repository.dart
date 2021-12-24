import 'package:dartz/dartz.dart';

import 'club_entity.dart';
import 'club_failure.dart';

abstract class IClubRepository{
  Stream<Either<ClubFailure,List<Club>>> getClubs();
}