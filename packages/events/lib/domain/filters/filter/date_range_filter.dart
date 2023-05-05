import 'package:common/common.dart';
import 'package:flutter/material.dart';

class DateRangeFilter implements IFilter {
  final DateTime? fromDate;
  final DateTime? toDate;
  static const eventStartDateFieldName = 'eventStartDateTime';
  static const eventEndDateFieldName = 'eventEndDateTime';

  DateRangeFilter({
    required this.fromDate,
    required this.toDate,
  });

  factory DateRangeFilter.empty() => DateRangeFilter(
        fromDate: null,
        toDate: null,
      );

  @override
  String buildFilters(String query) {
    final startTimestamp = fromDate?.millisecondsSinceEpoch ??
        DateTime.now().millisecondsSinceEpoch;

    if (toDate == null) {
      return TypesenseQueryBuilder.setNumericHigherEqualThan(
        query: query,
        field: eventEndDateFieldName,
        than: startTimestamp,
      );
    }

    return TypesenseQueryBuilder.setNumericBetween(
      query: query,
      field: eventStartDateFieldName,
      from: startTimestamp,
      to: _getEndTimeStamp(),
    );
  }

  _getEndTimeStamp() {
    final dateWithoutHours = DateUtils.dateOnly(toDate!);
    final endOfTheDay = dateWithoutHours
        .add(const Duration(days: 1))
        .subtract(const Duration(seconds: 1));

    return endOfTheDay.millisecondsSinceEpoch;
  }
}
