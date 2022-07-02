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
  String buildFilters(String query) {
    if (fromDate == null || toDate == null) return query;

    final startTimestamp = fromDate!.millisecondsSinceEpoch;
    final endTimestamp = toDate!.millisecondsSinceEpoch;

    query = TypesenseQueryBuilder.setNumericLowerEqualThan(
        query: query, field: eventStartDateFieldName, than: endTimestamp);

    return TypesenseQueryBuilder.setNumericHigherEqualThan(
        query: query, field: eventEndDateFieldName, than: startTimestamp);
  }
}
