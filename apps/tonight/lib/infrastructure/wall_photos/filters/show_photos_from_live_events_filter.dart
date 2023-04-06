import 'package:common/common.dart';

class ShowPhotosFromLiveEventsFilter implements IFilter {
  static const String eventEndDateTimeFieldName = 'eventEndDateTime';

  @override
  String buildFilters(String query) {
    final now = _getCurrentTime();

    return TypesenseQueryBuilder.setNumericHigherEqualThan(
      query: query,
      field: eventEndDateTimeFieldName,
      than: now,
    );
  }

  int _getCurrentTime() {
    return DateTime.now().millisecondsSinceEpoch;
  }
}
