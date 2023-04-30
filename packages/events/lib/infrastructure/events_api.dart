import 'package:dio/dio.dart';
import 'package:events/domain/domain.dart';

abstract class EventsApi {
  Future<List<dynamic>> getEvents(
    EventFilters filters,
    EventSortModel sortModel,
    int pageSize,
    int offset,
  );

  Future<List<dynamic>> getLiveEventsFromClub(
    EventFilters filters,
  );

  Future<List<dynamic>> getTonightEvents(
    EventFilters filters,
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
    final queryBy = _getQueryBy();

    const endpoint = 'events/getEvents';

    final data = {
      'query': filters.phraseFilter.phrase,
      'queryBy': queryBy,
      'filterBy': filterBy,
      'pageNumber': pageNumber,
      'pageSize': pageSize,
      'sortBy': sortBy,
    };

    final result = await _dio.post(endpoint, data: data);

    return result.data as List<dynamic>;
  }

  @override
  Future<List> getLiveEventsFromClub(EventFilters filters) async {
    const endpoint = 'events/getEvents';
    final data = {
      'query': '',
      'queryBy': '',
      'filterBy': filters.buildFilters(),
      'pageNumber': 1,
      'pageSize': 10,
      'sortBy': '',
    };
    final result = await _dio.post(endpoint, data: data);
    return result.data as List<dynamic>;
  }

  @override
  Future<List> getTonightEvents(
    EventFilters filters,
    int pageSize,
    int offset,
  ) async {
    final pageNumber = ((offset + 1) / pageSize).ceil();
    final sortBy = _getSortBy(
      EventSortModel(fieldName: attending, direction: SortDirection.desc),
    );
    const endpoint = 'events/getEvents';
    final data = {
      'query': '',
      'queryBy': '',
      'filterBy': filters.buildFilters(),
      'pageNumber': pageNumber,
      'pageSize': pageSize,
      'sortBy': sortBy,
    };
    final result = await _dio.post(endpoint, data: data);
    return result.data as List<dynamic>;
  }

  String _getSortBy(EventSortModel sortModel) {
    if (sortModel.fieldName == eventStartDateTime) {
      return sortModel.direction == SortDirection.desc
          ? 'eventStartDateTime:desc'
          : 'eventStartDateTime:asc';
    }

    if (sortModel.fieldName == attending) {
      return sortModel.direction == SortDirection.desc
          ? 'attending:desc'
          : 'attending:asc';
    }

    return '';
  }

  String _getQueryBy() {
    return 'eventName, artistName, clubName, musicalGenres, locationString';
  }
}
