import 'package:common/common.dart';

class ShowOnlyFilter implements IFilter {
  final bool showOnlyPast;
  final bool showOnlyUpcoming;
  final bool showOnlyLive;
  final bool showOnlyTonight;

  static const String eventStartDateTimeFieldName = 'eventStartDateTime';
  static const String eventEndDateTimeFieldName = 'eventEndDateTime';

  ShowOnlyFilter({
    this.showOnlyPast = false,
    this.showOnlyUpcoming = false,
    this.showOnlyLive = false,
    this.showOnlyTonight = false,
  });

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
    if (showOnlyTonight) {
      final now = DateTime.now();
      final previousDay = now.subtract(const Duration(days: 1));
      query = TypesenseQueryBuilder.setNumericBetween(
        query: query,
        field: eventStartDateTimeFieldName,
        from: previousDay.startOfDay.millisecondsSinceEpoch,
        to: DateTime(
          now.year,
          now.month,
          now.day,
          now.hour + 16,
        ).millisecondsSinceEpoch,
      );

      query += ' && ';

      return TypesenseQueryBuilder.setNumericHigherEqualThan(
        query: query,
        field: eventEndDateTimeFieldName,
        than: now.millisecondsSinceEpoch,
      );
    }
    return query;
  }

  int _getCurrentTime() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  ShowOnlyFilter copyWith({
    bool? showOnlyPast,
    bool? showOnlyUpcoming,
    bool? showOnlyLive,
    bool? showOnlyTonight,
  }) {
    return ShowOnlyFilter(
      showOnlyPast: showOnlyPast ?? this.showOnlyPast,
      showOnlyLive: showOnlyLive ?? this.showOnlyLive,
      showOnlyUpcoming: showOnlyUpcoming ?? this.showOnlyUpcoming,
      showOnlyTonight: showOnlyTonight ?? this.showOnlyTonight,
    );
  }
}
