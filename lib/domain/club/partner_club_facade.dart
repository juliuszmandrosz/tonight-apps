import 'package:dartz/dartz.dart';
import 'package:raver_clubs/domain/domain.dart';

abstract class PartnerClubFacade {
  Future<Either<PartnerClubFailure, Club>> getCurrentPartnerClub();
}
