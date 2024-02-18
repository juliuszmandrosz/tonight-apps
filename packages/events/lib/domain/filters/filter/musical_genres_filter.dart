import 'package:common/common.dart';

class MusicalGenresFilter implements IFilter {
  final List<String> musicalGenres;
  static const fieldName = 'musicalGenres';

  MusicalGenresFilter({required this.musicalGenres});

  factory MusicalGenresFilter.empty() => MusicalGenresFilter(musicalGenres: []);

  @override
  String buildFilters() {
    if (musicalGenres.isEmpty) return '';
    return AlgoliaQueryBuilder.setMultipleOrFilters(
      field: fieldName,
      values: musicalGenres,
    );
  }
}
