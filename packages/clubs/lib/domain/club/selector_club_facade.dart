import 'package:dartz/dartz.dart';
import 'package:raver_clubs/raver_clubs.dart';

abstract class SelectorClubFacade {
  Future<Either<SelectorClubFailure, Club>> getCurrentSelectorClub();

  Future<Either<SelectorClubFailure, Unit>> enterAccessCodeToClub(
    String accessCode,
  );
}
