import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_events/infrastructure/algolia_query_builder.dart';

class DateRangeFilter implements IFilter {
  final DateTime? fromDate;
  final DateTime? toDate;
  static const eventStartDateFieldName = 'eventStartDateTime';
  static const eventEndDateFieldName = 'eventEndDateTime';

  DateRangeFilter({
    required this.fromDate,
    required this.toDate,
  });

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if (fromDate == null) return query;

    final startTimestamp = fromDate!.millisecondsSinceEpoch;

    if (toDate == null) {
      return AlgoliaQueryBuilder.setNumericHigherEqualThan(
          query: query, field: eventEndDateFieldName, than: startTimestamp);
    }

    final endOfTheDay = toDate!.add(const Duration(days: 1));
    final endTimestamp = endOfTheDay.millisecondsSinceEpoch;

    return AlgoliaQueryBuilder.setNumericBetween(
      query: query,
      field: eventStartDateFieldName,
      from: startTimestamp,
      to: endTimestamp,
    );
  }
}
