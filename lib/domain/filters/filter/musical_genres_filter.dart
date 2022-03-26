import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_events/infrastructure/algolia_query_builder.dart';

class MusicalGenresFilter implements IFilter {
  final List<String> musicalGenres;
  static const fieldName = 'musicalGenres';

  MusicalGenresFilter({required this.musicalGenres});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if (musicalGenres.isEmpty) {
      return query;
    }
    return AlgoliaQueryBuilder.setFacetListFilter(
      query: query,
      field: fieldName,
      values: musicalGenres,
    );
  }
}
