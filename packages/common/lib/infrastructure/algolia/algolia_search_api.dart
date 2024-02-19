import 'package:common/infrastructure/algolia/algolia_index.dart';
import 'package:dio/dio.dart';

abstract class AlgoliaSearchApi {
  Future<List<dynamic>> search({
    required AlgoliaIndex index,
    required int offset,
    required int hitsPerPage,
    String? aroundLatLng,
    int? aroundRadius,
    String query = '',
    String filters = '',
  });
}

class AlgoliaSearchApiImpl implements AlgoliaSearchApi {
  final Dio _dio;

  AlgoliaSearchApiImpl(this._dio);

  @override
  Future<List> search({
    required AlgoliaIndex index,
    required int offset,
    required int hitsPerPage,
    String? aroundLatLng,
    int? aroundRadius,
    String query = '',
    String filters = '',
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
