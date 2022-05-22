import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class AllowedOutfitsFilter implements IFilter {
  final List<String> allowedOutfits;
  static const fieldName = 'allowedOutfit';

  AllowedOutfitsFilter({required this.allowedOutfits});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if (allowedOutfits.isEmpty) {
      return query;
    }
    return AlgoliaQueryBuilder.setFacetListFilter(
      query: query,
      field: fieldName,
      values: allowedOutfits,
    );
  }
}
