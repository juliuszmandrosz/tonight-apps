import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class MusicalGenresFilter implements IFilter {
  final List<String> musicalGenres;
  static const fieldName = 'musicalGenres';

  MusicalGenresFilter({required this.musicalGenres});

  @override
  String buildFilters(String query) {
    if (musicalGenres.isEmpty) {
      return query;
    }
    return TypesenseQueryBuilder.setFacetListFilter(
      query: query,
      field: fieldName,
      values: musicalGenres,
    );
  }
}
