// import 'package:algolia/algolia.dart';
//
// import 'filters/club_filters_entity.dart';
//
// abstract class AlgoliaClubsApi {
//   Future<AlgoliaQuerySnapshot> getClubs(
//     ClubFilters filters,
//     int pageSize,
//     int offset,
//   );
// }
//
// class AlgoliaClubsApiImpl implements AlgoliaClubsApi {
//   final Algolia _algolia;
//   final String clubsIndex = 'clubs';
//
//   AlgoliaClubsApiImpl(this._algolia);
//
//   @override
//   Future<AlgoliaQuerySnapshot> getClubs(
//     ClubFilters filters,
//     int pageSize,
//     int offset,
//   ) async {
//     AlgoliaQuery query = _algolia.instance.index(clubsIndex);
//
//     query = filters.buildQuery(query);
//
//     query = query.setLength(pageSize).setOffset(offset);
//
//     return await query.getObjects();
//   }
// }
