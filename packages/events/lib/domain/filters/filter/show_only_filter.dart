import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class ShowOnlyFilter extends Equatable implements IFilter {
  final bool showOnlyPast;
  final bool showOnlyUpcoming;
  final bool showOnlyLive;
  final bool showOnlyTonight;

  static const String eventStartDateTimeFieldName = 'eventStartDateTime';
  static const String eventEndDateTimeFieldName = 'eventEndDateTime';

  const ShowOnlyFilter({
    this.showOnlyPast = false,
    this.showOnlyUpcoming = false,
    this.showOnlyLive = false,
    this.showOnlyTonight = false,
  });

  @override
  String buildFilters() {
    if (showOnlyLive) {
      final now = _getCurrentTime();
      return '${AlgoliaQueryBuilder.setNumericLowerEqualThan(
        field: eventStartDateTimeFieldName,
        than: now,
      )} AND ${AlgoliaQueryBuilder.setNumericHigherEqualThan(
        field: eventEndDateTimeFieldName,
        than: now,
      )}';
    }
    if (showOnlyUpcoming) {
      final now = _getCurrentTime();
      return AlgoliaQueryBuilder.setNumericHigherThan(
        field: eventStartDateTimeFieldName,
        than: now,
      );
    }
    if (showOnlyPast) {
      final now = _getCurrentTime();
      return AlgoliaQueryBuilder.setNumericLowerThan(
        field: eventEndDateTimeFieldName,
        than: now,
      );
    }
    if (showOnlyTonight) {
      final now = DateTime.now();
      final previousDay = now.subtract(const Duration(days: 1));
      return '${AlgoliaQueryBuilder.setNumericBetween(
        field: eventStartDateTimeFieldName,
        from: previousDay.startOfDay.millisecondsSinceEpoch,
        to: DateTime(
          now.year,
          now.month,
          now.day,
          now.hour + 16,
        ).millisecondsSinceEpoch,
      )} AND ${AlgoliaQueryBuilder.setNumericHigherEqualThan(
        field: eventEndDateTimeFieldName,
        than: now.millisecondsSinceEpoch,
      )}';
    }
    return '';
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

  @override
  List<Object?> get props => [
        showOnlyPast,
        showOnlyUpcoming,
        showOnlyLive,
        showOnlyTonight,
      ];
}
