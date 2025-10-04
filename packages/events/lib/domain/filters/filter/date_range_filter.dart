import 'package:common/common.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class DateRangeFilter extends Equatable implements IFilter {
  final DateTime? fromDate;
  final DateTime? toDate;
  static const eventStartDateFieldName = 'eventStartDateTime';
  static const eventEndDateFieldName = 'eventEndDateTime';

  const DateRangeFilter({
    required this.fromDate,
    required this.toDate,
  });

  factory DateRangeFilter.empty() => const DateRangeFilter(
        fromDate: null,
        toDate: null,
      );

  @override
  String buildFilters() {
    final startTimestamp = fromDate?.millisecondsSinceEpoch ??
        DateTime.now().millisecondsSinceEpoch;

    if (toDate == null) {
      return AlgoliaQueryBuilder.setNumericHigherEqualThan(
        field: eventEndDateFieldName,
        than: startTimestamp,
      );
    }

    return AlgoliaQueryBuilder.setNumericBetween(
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

  @override
  List<Object?> get props => [fromDate, toDate];
}
