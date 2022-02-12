import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/clubs/club_overview/club_failure.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_entity.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_facade.dart';

import 'dtos/club_overview_dto.dart';
import 'filters/club_filter.dart';

@LazySingleton(as: ClubOverviewFacade)
class FirebaseClubOverviewFacade implements ClubOverviewFacade {
  final FirebaseFirestore _firestore;
  final logger = Logger();

  FirebaseClubOverviewFacade(this._firestore);

  @override
  Future<Either<ClubFailure, List<ClubOverview>>> getClubs(
      ClubFilter filter) async {
    Query clubsQuery = applyFiler(_firestore.collection('clubs'), filter)
        .limit(10); //for now hard pagination limit, need to discuss that
    try {
      QuerySnapshot result = await clubsQuery.get();
      return right(result.docs
          .map((QueryDocumentSnapshot document) =>
              ClubOverviewDto.fromFirebase(document).toDomain())
          .toList());
    } on FirebaseException catch (exception) {
      logger.e("Exception during fetching clubs EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  Query applyFiler(Query query, ClubFilter filter) {
    Query filteredQuery = query;
    filter.map((filterWithValues) {
      if (filterWithValues.phrase.isNotEmpty) {
        // TODO - add case insensitive search
        filteredQuery = filteredQuery
            .where('clubName', isGreaterThanOrEqualTo: filterWithValues.phrase)
            .where('clubName',
                isLessThanOrEqualTo: "${filterWithValues.phrase}\uf7ff");
      }
    }, empty: (value) {
      filteredQuery = query;
    });
    return filteredQuery;
  }
}
