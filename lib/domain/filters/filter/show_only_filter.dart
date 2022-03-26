import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_events/infrastructure/algolia_query_builder.dart';

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
  }){
    this.showOnlyPast = showOnlyPast ?? false;
    this.showOnlyUpcoming = showOnlyUpcoming ?? false;
    this.showOnlyLive = showOnlyLive ?? false;

  }

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if (showOnlyLive) {
      final now = _getCurrentTime();
      query = AlgoliaQueryBuilder.setNumericLowerEqualThan(
        query: query,
        field: eventStartDateTimeFieldName,
        than: now,
      );

      return AlgoliaQueryBuilder.setNumericHigherEqualThan(
        query: query,
        field: eventEndDateTimeFieldName,
        than: now,
      );
    }
    if (showOnlyUpcoming) {
      final now = _getCurrentTime();
      return AlgoliaQueryBuilder.setNumericHigherThan(
        query: query,
        field: eventStartDateTimeFieldName,
        than: now,
      );
    }
    if (showOnlyPast) {
      final now = _getCurrentTime();
      return AlgoliaQueryBuilder.setNumericLowerThan(
        query: query,
        field: eventEndDateTimeFieldName,
        than: now,
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
  }) {
    return ShowOnlyFilter(
      showOnlyPast: showOnlyPast ?? false,
      showOnlyLive: showOnlyLive ?? false,
      showOnlyUpcoming: showOnlyUpcoming ?? false,
    );
  }
}
