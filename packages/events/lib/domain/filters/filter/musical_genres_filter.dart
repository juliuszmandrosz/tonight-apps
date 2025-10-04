import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class MusicalGenresFilter extends Equatable implements IFilter {
  final List<String> musicalGenres;
  static const fieldName = 'musicalGenres';

  const MusicalGenresFilter({required this.musicalGenres});

  factory MusicalGenresFilter.empty() =>
      const MusicalGenresFilter(musicalGenres: []);

  @override
  String buildFilters() {
    if (musicalGenres.isEmpty) return '';
    return AlgoliaQueryBuilder.setMultipleOrFilters(
      field: fieldName,
      values: musicalGenres,
    );
  }

  @override
  List<Object?> get props => [musicalGenres];
}
