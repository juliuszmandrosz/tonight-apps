import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/clubs/club_overview/club_failure.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_entity.dart';
import 'package:raver/domain/clubs/club_overview/i_club_overview_repository.dart';

import 'dtos/club_overview_dto.dart';
import 'filters/club_filter.dart';

@LazySingleton(as: IClubOverviewRepository)
class ClubOverviewRepository implements IClubOverviewRepository {
  final FirebaseFirestore _firestore;
  final logger = Logger();

  ClubOverviewRepository(this._firestore);

  @override
  Future<Either<ClubFailure, List<ClubOverview>>> getClubs(
      ClubFilter filter) async {
    Query clubsQuery = applyFiler(_firestore.collection('clubs'), filter)
        .limit(10); //for now hard pagination limit, need to discuss that
    //Did not find docs about possible exceptions, catching all and logging them to avoid ctd
    try {
      QuerySnapshot result = await clubsQuery.get();
      return right(result.docs.map((QueryDocumentSnapshot document){
        return ClubOverviewDto.fromFirebase(document).toDomain();
      }).toList());
    } on Exception catch (exception) {
      logger.e("Exception during fetching clubs EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  Query applyFiler(Query query, ClubFilter filter) {
    if (filter.phrase.isNotEmpty) {
      return query
          .where('clubName', isGreaterThanOrEqualTo: filter.phrase)
          .where('clubName', isLessThanOrEqualTo: "${filter.phrase}\uf7ff");
    }
    return query;
  }
}
