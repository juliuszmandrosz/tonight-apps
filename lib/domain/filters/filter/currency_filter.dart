import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class CurrencyFilter implements IFilter {
  final String currency;
  static const fieldName = 'currency';

  CurrencyFilter({required this.currency});

  @override
  String buildFilters(String query) {
    if (currency.isEmpty) return query;
    return TypesenseQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: currency,
    );
  }
}
