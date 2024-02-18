import 'package:common/common.dart';

class IsTonightEventFilter implements IFilter {
  final bool isTonightEvent;
  static const fieldName = 'isTonightEvent';

  IsTonightEventFilter({required this.isTonightEvent});

  @override
  String buildFilters() {
    if (!isTonightEvent) return '';
    return AlgoliaQueryBuilder.setStringFilter(
      field: fieldName,
      value: isTonightEvent.toString(),
    );
  }
}
