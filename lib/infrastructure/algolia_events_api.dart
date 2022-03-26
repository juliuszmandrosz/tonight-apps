import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/domain.dart';

abstract class AlgoliaEventsApi {
  Future<AlgoliaQuerySnapshot> getEvents(
    EventFilters filters,
    SortModel sortModel,
    int pageSize,
    int offset,
  );
}

class AlgoliaEventsApiImpl implements AlgoliaEventsApi {
  final Algolia _algolia;

  AlgoliaEventsApiImpl(this._algolia);

  @override
  Future<AlgoliaQuerySnapshot> getEvents(
    EventFilters filters,
    SortModel sortModel,
    int pageSize,
    int offset,
  ) async {
    AlgoliaQuery query = _algolia.instance.index(_getIndexName(sortModel));

    query=filters.buildQuery(query);

    query = query.setLength(pageSize).setOffset(offset);

    return await query.getObjects();
  }

  String _getIndexName(SortModel sortModel) {
    if (sortModel.fieldName == eventStartDateTime) {
      return sortModel.direction == SortDirection.desc
          ? 'events_eventStartDateTime_desc'
          : 'events';
    }

    return 'events';
  }
}
