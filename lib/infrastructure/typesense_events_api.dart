import 'package:raver_events/domain/domain.dart';
import 'package:typesense/typesense.dart';

abstract class TypesenseEventsApi {
  Future<Map<String, dynamic>> getEvents(
    EventFilters filters,
    EventSortModel sortModel,
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
    EventSortModel sortModel,
    int pageSize,
    int offset,
  ) async {
    final filterBy = filters.buildFilters();
    final pageNumber = ((offset + 1) / pageSize).ceil();
    final sortBy = _getSortBy(sortModel);

    return await _typesense.collection('events').documents.search({
      'q': filters.phraseFilter.phrase,
      'query_by': 'eventName, artistName, clubName',
      'filter_by': filterBy,
      'page': '$pageNumber',
      'per_page': '$pageSize',
      'sort_by': sortBy,
    });
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
