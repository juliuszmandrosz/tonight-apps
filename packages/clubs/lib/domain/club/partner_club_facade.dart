import 'package:dartz/dartz.dart';
import 'package:clubs/domain/club/get_clubs_mixin.dart';
import 'package:clubs/domain/domain.dart';

abstract class PartnerClubFacade with GetClubsMixin {
  Future<Either<PartnerClubFailure, Club>> getCurrentPartnerClub();

  Future<Either<PartnerClubFailure, Unit>> changeClub(String clubId);
}
