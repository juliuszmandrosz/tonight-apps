import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class PriceRangeFilter extends Equatable implements IFilter {
  final int minPrice;
  final int? maxPrice;
  static const fieldName = 'price';

  const PriceRangeFilter({required this.minPrice, this.maxPrice});

  factory PriceRangeFilter.empty() => const PriceRangeFilter(minPrice: 0);

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

  @override
  List<Object?> get props => [minPrice, maxPrice];
}
