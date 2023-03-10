import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class MinAgesFilter implements IFilter {
  final List<int> minAges;
  static const fieldName = 'minAge';

  MinAgesFilter({required this.minAges});

  @override
  String buildFilters(String query) {
    if (minAges.isEmpty) {
      return query;
    }
    return TypesenseQueryBuilder.setFacetListFilter(
      query: query,
      field: fieldName,
      values: minAges.map((e) => '$e').toList(),
    );
  }
}
