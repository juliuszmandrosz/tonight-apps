import 'package:common/common.dart';

class ShowOnlyFilter implements IFilter {
  late final bool showOnlyPast;
  late final bool showOnlyUpcoming;
  late final bool showOnlyLive;

  static const String eventStartDateTimeFieldName = 'eventStartDateTime';
  static const String eventEndDateTimeFieldName = 'eventEndDateTime';

  ShowOnlyFilter({
    bool? showOnlyPast,
    bool? showOnlyUpcoming,
    bool? showOnlyLive,
  }) {
    this.showOnlyPast = showOnlyPast ?? false;
    this.showOnlyUpcoming = showOnlyUpcoming ?? false;
    this.showOnlyLive = showOnlyLive ?? false;
  }

  @override
  String buildFilters(String query) {
    if (showOnlyLive) {
      final now = _getCurrentTime();
      query = TypesenseQueryBuilder.setNumericLowerEqualThan(
        query: query,
        field: eventStartDateTimeFieldName,
        than: now,
      );

      query += ' && ';

      return TypesenseQueryBuilder.setNumericHigherEqualThan(
        query: query,
        field: eventEndDateTimeFieldName,
        than: now,
      );
    }
    if (showOnlyUpcoming) {
      final now = _getCurrentTime();
      return TypesenseQueryBuilder.setNumericHigherThan(
        query: query,
        field: eventStartDateTimeFieldName,
        than: now,
      );
    }
    if (showOnlyPast) {
      final now = _getCurrentTime();
      return TypesenseQueryBuilder.setNumericLowerThan(
        query: query,
        field: eventEndDateTimeFieldName,
        than: now,
      );
    }
    return query;
  }

  int _getCurrentTime() {
    return DateTime(2023, 4, 22, 1).millisecondsSinceEpoch;
  }

  ShowOnlyFilter copyWith({
    bool? showOnlyPast,
    bool? showOnlyUpcoming,
    bool? showOnlyLive,
  }) {
    return ShowOnlyFilter(
      showOnlyPast: showOnlyPast ?? false,
      showOnlyLive: showOnlyLive ?? false,
      showOnlyUpcoming: showOnlyUpcoming ?? false,
    );
  }
}
