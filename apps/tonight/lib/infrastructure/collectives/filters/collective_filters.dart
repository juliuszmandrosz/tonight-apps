import 'package:common/extensions/ifilter_list_extensions.dart';
import 'package:common/infrastructure/infrastructure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/infrastructure/collectives/filters/cities_filter.dart';

part 'collective_filters.freezed.dart';

@freezed
abstract class CollectiveFilters with _$CollectiveFilters {
  const CollectiveFilters._();

  factory CollectiveFilters({
    required PhraseFilter phraseFilter,
    required CitiesFilter citiesFilter,
  }) = _CollectiveFilters;

  factory CollectiveFilters.empty() => CollectiveFilters(
        phraseFilter: PhraseFilter.empty(),
        citiesFilter: CitiesFilter.empty(),
      );

  String buildFilters() {
    final filterList = <IFilter>[
      citiesFilter,
    ];
    return filterList.buildFilters();
  }
}
