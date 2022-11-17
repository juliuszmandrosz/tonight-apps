import 'package:dartz/dartz.dart';
import 'package:raver_clubs/domain/club/get_clubs_mixin.dart';
import 'package:raver_clubs/domain/domain.dart';

abstract class PartnerClubFacade with GetClubsMixin {
  Future<Either<PartnerClubFailure, Club>> getCurrentPartnerClub();
}
