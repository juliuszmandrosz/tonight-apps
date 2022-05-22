import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class DateIncludesFilter implements IFilter {
  final DateTime? fromDate;
  final DateTime? toDate;
  static const eventStartDateFieldName = 'eventStartDateTime';
  static const eventEndDateFieldName = 'eventEndDateTime';

  DateIncludesFilter({
    required this.fromDate,
    required this.toDate,
  });

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if (fromDate == null || toDate == null) return query;

    final startTimestamp = fromDate!.millisecondsSinceEpoch;
    final endTimestamp = toDate!.millisecondsSinceEpoch;

    query = AlgoliaQueryBuilder.setNumericLowerEqualThan(
        query: query, field: eventStartDateFieldName, than: endTimestamp);

    return AlgoliaQueryBuilder.setNumericHigherEqualThan(
        query: query, field: eventEndDateFieldName, than: startTimestamp);
  }
}
