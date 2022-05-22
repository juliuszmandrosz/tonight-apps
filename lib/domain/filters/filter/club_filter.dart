import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class ClubFilter implements IFilter {
  final String? clubId;
  static const fieldName = 'clubId';

  ClubFilter({required this.clubId});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if(clubId==null) return query;
    return AlgoliaQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: clubId!,
    );
  }
}
