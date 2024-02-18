import 'package:common/common.dart';

class CurrencyFilter implements IFilter {
  final String currency;
  static const fieldName = 'currency';

  CurrencyFilter({required this.currency});

  @override
  String buildFilters() {
    if (currency.isEmpty) return '';
    return AlgoliaQueryBuilder.setStringFilter(
      field: fieldName,
      value: currency,
    );
  }
}
