import 'package:dartz/dartz.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/domain/clubs/club_failure.dart';
import 'package:raver/domain/clubs/i_club_facade.dart';
import 'package:raver/domain/clubs/i_club_repository.dart';

class ClubFacade implements IClubFacade{
  final IClubRepository _clubRepository;

  ClubFacade(this._clubRepository);

  @override
  Future<Stream<Either<ClubFailure, List<Club>>>> getClubs() {
    throw UnimplementedError();
  }

}