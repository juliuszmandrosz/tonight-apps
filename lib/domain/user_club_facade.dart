import 'package:dartz/dartz.dart';
import 'package:raver_clubs/domain/failures/user_club_failure.dart';

import 'club_entity.dart';

abstract class UserClubFacade {
  Future<Either<UserClubFailure, Club>> getClubById(String id);
}
