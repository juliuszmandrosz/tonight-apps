import 'package:common/common.dart';

class PriceRangeFilter implements IFilter {
  final int minPrice;
  final int? maxPrice;
  static const fieldName = 'price';

  PriceRangeFilter({required this.minPrice, this.maxPrice});

  factory PriceRangeFilter.empty() => PriceRangeFilter(minPrice: 0);

  @override
  String buildFilters() {
    if (maxPrice != null) {
      return AlgoliaQueryBuilder.setNumericBetween(
        field: fieldName,
        from: minPrice,
        to: maxPrice!,
      );
    }
    return AlgoliaQueryBuilder.setNumericHigherEqualThan(
      field: fieldName,
      than: minPrice,
    );
  }
}
