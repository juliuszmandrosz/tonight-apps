import 'package:logger/logger.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:typesense/typesense.dart';

abstract class TypesenseEventsApi {
  Future<Map<String, dynamic>> getEvents(
    EventFilters filters,
    SortModel sortModel,
    int pageSize,
    int offset,
  );
}

class TypesenseEventsApiImpl implements TypesenseEventsApi {
  final Client _typesense;

  TypesenseEventsApiImpl(this._typesense);

  @override
  Future<Map<String, dynamic>> getEvents(
    EventFilters filters,
    SortModel sortModel,
    int pageSize,
    int offset,
  ) async {
    final filterBy = filters.buildFilters();
    final pageNumber = offset == 0 ? 1 : (offset / pageSize).ceil();
    Logger().i(filterBy);

    return await _typesense.collection('events').documents.search({
      'q': filters.phraseFilter.phrase,
      'query_by': 'eventName, artistName, clubName',
      'filter_by': filterBy,
      'page': '$pageNumber',
      'per_page': '$pageSize',
    });
  }
}
