import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_events/infrastructure/algolia_query_builder.dart';

class CurrencyFilter implements IFilter {
  final String currency;
  static const fieldName = 'currency';

  CurrencyFilter({required this.currency});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if (currency.isEmpty) return query;
    return AlgoliaQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: currency,
    );
  }
}
