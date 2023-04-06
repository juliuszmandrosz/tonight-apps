import 'package:common/common.dart';

class PriceRangeFilter implements IFilter {
  final int minPrice;
  final int? maxPrice;
  static const fieldName = 'price';

  PriceRangeFilter({required this.minPrice, this.maxPrice});

  @override
  String buildFilters(String query) {
    if (maxPrice != null) {
      return TypesenseQueryBuilder.setNumericBetween(
        query: query,
        field: fieldName,
        from: minPrice,
        to: maxPrice!,
      );
    }
    return TypesenseQueryBuilder.setNumericHigherEqualThan(
        query: query, field: fieldName, than: minPrice);
  }
}
