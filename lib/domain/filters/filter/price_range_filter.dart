import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_events/infrastructure/algolia_query_builder.dart';

class PriceRangeFilter implements IFilter {
  final int minPrice;
  final int? maxPrice;
  static const fieldName = 'price';

  PriceRangeFilter({required this.minPrice, this.maxPrice});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if (maxPrice != null) {
      return AlgoliaQueryBuilder.setNumericBetween(
        query: query,
        field: fieldName,
        from: minPrice,
        to: maxPrice!,
      );
    }
    return AlgoliaQueryBuilder.setNumericHigherEqualThan(
        query: query, field: fieldName, than: minPrice);
  }
}
