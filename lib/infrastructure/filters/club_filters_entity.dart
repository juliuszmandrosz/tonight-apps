import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/infrastructure/filters/filter/ifilter.dart';
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

  String buildFilters() {
    var filterBy = '';
    final filterList = <IFilter>[];
    for (final filter in filterList) {
      final previousQuery = filterBy;
      filterBy = filter.buildFilters(filterBy);
      if (filter != filterList.last && previousQuery != filterBy) {
        filterBy += ' && ';
      }
    }
    return filterBy;
  }
}
