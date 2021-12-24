import 'package:dartz/dartz.dart';

import 'club_entity.dart';
import 'club_failure.dart';

abstract class IClubFacade{
  Future<Stream<Either<ClubFailure,List<Club>>>> getClubs();
}