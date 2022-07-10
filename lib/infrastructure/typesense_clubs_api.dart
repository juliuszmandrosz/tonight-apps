import 'package:raver_clubs/raver_clubs.dart';
import 'package:typesense/typesense.dart';

abstract class TypesenseClubsApi {
  Future<Map<String, dynamic>> getClubs(
    ClubFilters filters,
    int pageSize,
    int offset,
  );
}

class TypesenseClubsApiImpl implements TypesenseClubsApi {
  final Client _typesense;

  TypesenseClubsApiImpl(this._typesense);

  @override
  Future<Map<String, dynamic>> getClubs(
    ClubFilters filters,
    int pageSize,
    int offset,
  ) async {
    final filterBy = filters.buildFilters();
    final pageNumber = ((offset + 1) / pageSize).ceil();

    return await _typesense.collection('clubs').documents.search({
      'q': filters.phraseFilter.phrase,
      'query_by': 'clubName, locationString',
      'filter_by': filterBy,
      'page': '$pageNumber',
      'per_page': '$pageSize',
    });
  }
}
