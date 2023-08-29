import 'package:common/common.dart';

class IsTonightEventFilter implements IFilter {
  final bool isTonightEvent;
  static const fieldName = 'isTonightEvent';

  IsTonightEventFilter({required this.isTonightEvent});

  @override
  String buildFilters(String query) {
    if (!isTonightEvent) return query;
    return TypesenseQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: isTonightEvent.toString(),
    );
  }
}
