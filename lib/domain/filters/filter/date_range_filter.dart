import 'package:algolia/algolia.dart';
import 'package:flutter/material.dart';
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

    return AlgoliaQueryBuilder.setNumericBetween(
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
