import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class IsConcertFilter implements IFilter {
  final bool? isConcert;
  static const fieldName = 'isConcert';

  IsConcertFilter({required this.isConcert});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if (isConcert == null) return query;
    return AlgoliaQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: isConcert.toString(),
    );
  }
}
