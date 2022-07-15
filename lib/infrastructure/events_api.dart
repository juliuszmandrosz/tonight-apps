import 'package:dio/dio.dart';
import 'package:raver_events/domain/domain.dart';

abstract class EventsApi {
  Future<List<dynamic>> getEvents(
    EventFilters filters,
    EventSortModel sortModel,
    int pageSize,
    int offset,
  );
}

class EventsApiImpl implements EventsApi {
  final Dio _dio;

  EventsApiImpl(this._dio);

  @override
  Future<List<dynamic>> getEvents(
    EventFilters filters,
    EventSortModel sortModel,
    int pageSize,
    int offset,
  ) async {
    final filterBy = filters.buildFilters();
    final pageNumber = ((offset + 1) / pageSize).ceil();
    final sortBy = _getSortBy(sortModel);

    const endpoint = 'events/getEvents';

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

  _getSortBy(EventSortModel sortModel) {
    if (sortModel.fieldName == eventStartDateTime) {
      return sortModel.direction == SortDirection.desc
          ? 'eventStartDateTime:desc'
          : 'eventStartDateTime:asc';
    }

    return '';
  }
}
