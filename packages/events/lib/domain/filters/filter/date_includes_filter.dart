import 'package:common/common.dart';

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
  String buildFilters() {
    if (fromDate == null || toDate == null) return '';

    final startTimestamp = fromDate!.millisecondsSinceEpoch;
    final endTimestamp = toDate!.millisecondsSinceEpoch;

    return '${AlgoliaQueryBuilder.setNumericLowerEqualThan(
      field: eventStartDateFieldName,
      than: endTimestamp,
    )} AND ${AlgoliaQueryBuilder.setNumericHigherEqualThan(
      field: eventEndDateFieldName,
      than: startTimestamp,
    )}';
  }
}
