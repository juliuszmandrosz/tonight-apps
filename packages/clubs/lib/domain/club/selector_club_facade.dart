import 'package:dartz/dartz.dart';
import 'package:clubs/clubs.dart';

abstract class SelectorClubFacade {
  Future<Either<SelectorClubFailure, Club>> getCurrentSelectorClub();

  Future<Either<SelectorClubFailure, Unit>> enterAccessCodeToClub(
    String accessCode,
  );
}
