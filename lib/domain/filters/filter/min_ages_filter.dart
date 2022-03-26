import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_events/infrastructure/algolia_query_builder.dart';

class MinAgesFilter implements IFilter {
  final List<int> minAges;
  static const fieldName = 'minAge';

  MinAgesFilter({required this.minAges});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if (minAges.isEmpty) {
      return query;
    }
    return AlgoliaQueryBuilder.setFacetListFilter(
      query: query,
      field: fieldName,
      values: minAges.map((e) => '$e').toList(),
    );
  }
}
