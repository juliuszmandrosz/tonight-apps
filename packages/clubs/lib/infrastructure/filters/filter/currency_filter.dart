import 'package:common/common.dart';

class CurrencyFilter implements IFilter {
  final String currency;
  static const fieldName = 'acceptedCurrency';

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
