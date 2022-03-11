import 'package:algolia/algolia.dart';
import 'package:raver/domain/clubs/filters/club_filters.dart';

class AlgoliaClubsApi {
  final Algolia _algolia;
  final String clubsIndex = 'clubs';

  AlgoliaClubsApi(this._algolia);

  Future<AlgoliaQuerySnapshot> getClubs(
    ClubFilters filters,
    int pageSize,
    int offset,
  ) async {
    AlgoliaQuery query = _algolia.instance.index(clubsIndex);

    if (filters.phrase.isNotEmpty) {
      query = query.query(filters.phrase);
    }

    query = query.setLength(pageSize).setOffset(offset);

    return await query.getObjects();
  }
}
