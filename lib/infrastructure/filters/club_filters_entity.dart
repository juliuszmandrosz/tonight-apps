import 'package:algolia/algolia.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/infrastructure/filters/filter/phrase_filter.dart';

part 'club_filters_entity.freezed.dart';

@freezed
abstract class ClubFilters with _$ClubFilters {
  const ClubFilters._();

  factory ClubFilters({
    required PhraseFilter phraseFilter,
  }) = _ClubFilter;

  factory ClubFilters.empty() => ClubFilters(
        phraseFilter: PhraseFilter(phrase: ""),
      );

  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    final filterList = [
      phraseFilter,
    ];
    for (final filter in filterList) {
      query = filter.buildQuery(query);
    }
    return query;
  }
}
