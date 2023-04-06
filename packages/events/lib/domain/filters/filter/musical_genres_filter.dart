import 'package:common/common.dart';

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
