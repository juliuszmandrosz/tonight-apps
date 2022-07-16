import 'package:dio/dio.dart';
import 'package:raver_clubs/raver_clubs.dart';

abstract class ClubsApi {
  Future<List<dynamic>> getClubs(
    ClubFilters filters,
    int pageSize,
    int offset,
  );
}

class ClubsApiImpl implements ClubsApi {
  final Dio _dio;

  ClubsApiImpl(this._dio);

  @override
  Future<List<dynamic>> getClubs(
    ClubFilters filters,
    int pageSize,
    int offset,
  ) async {
    final filterBy = filters.buildFilters();
    final pageNumber = ((offset + 1) / pageSize).ceil();
    const sortBy = 'reviewCount:desc, reviewAvg:desc';

    const endpoint = 'clubs/getClubs';

    final data = {
      'query': filters.phraseFilter.phrase,
      'filterBy': filterBy,
      'pageNumber': pageNumber,
      'pageSize': pageSize,
      'sortBy': sortBy,
    };

    final result = await _dio.post(endpoint, data: data);

    return result.data as List<dynamic>;
  }
}
