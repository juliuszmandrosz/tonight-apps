import 'package:common/infrastructure/algolia/algolia_index.dart';
import 'package:dio/dio.dart';

abstract class AlgoliaSearchApi {
  Future<List<dynamic>> search({
    required AlgoliaIndex index,
    int hitsPerPage = 20,
    int offset = 0,
    String query = '',
    String filters = '',
    String? aroundLatLng,
    int? aroundRadius,
  });
}

class AlgoliaSearchApiImpl implements AlgoliaSearchApi {
  final Dio _dio;

  AlgoliaSearchApiImpl(this._dio);

  @override
  Future<List> search({
    required AlgoliaIndex index,
    int hitsPerPage = 20,
    int offset = 0,
    String query = '',
    String filters = '',
    String? aroundLatLng,
    int? aroundRadius,
  }) async {
    final pageNumber = (offset / hitsPerPage).ceil();
    const endpoint = 'algolia/search';

    final data = {
      'index': index.name,
      'query': query,
      'filters': filters,
      'aroundLatLng': aroundLatLng,
      'aroundRadius': aroundRadius,
      'page': pageNumber,
      'hitsPerPage': hitsPerPage,
    };

    final result = await _dio.post(endpoint, data: data);
    return result.data as List<dynamic>;
  }
}
