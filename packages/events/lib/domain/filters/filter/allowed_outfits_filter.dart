import 'package:common/common.dart';
import 'package:events/domain/filters/filter/ifilter.dart';

class AllowedOutfitsFilter implements IFilter {
  final List<String> allowedOutfits;
  static const fieldName = 'allowedOutfit';

  AllowedOutfitsFilter({required this.allowedOutfits});

  @override
  String buildFilters(String query) {
    if (allowedOutfits.isEmpty) {
      return query;
    }
    return TypesenseQueryBuilder.setFacetListFilter(
      query: query,
      field: fieldName,
      values: allowedOutfits,
    );
  }
}
