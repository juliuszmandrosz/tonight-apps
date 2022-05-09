import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_events/infrastructure/algolia_query_builder.dart';

class IsCanceledFilter implements IFilter {
  final bool isCanceled;
  static const fieldName = 'isCanceled';

  IsCanceledFilter({required this.isCanceled});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    return AlgoliaQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: isCanceled.toString(),
    );
  }
}
