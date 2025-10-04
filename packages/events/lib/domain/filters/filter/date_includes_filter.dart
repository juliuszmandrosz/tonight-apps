import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class DateIncludesFilter extends Equatable implements IFilter {
  final DateTime? fromDate;
  final DateTime? toDate;
  static const eventStartDateFieldName = 'eventStartDateTime';
  static const eventEndDateFieldName = 'eventEndDateTime';

  const DateIncludesFilter({
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

  @override
  List<Object?> get props => [fromDate, toDate];
}
