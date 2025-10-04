import 'package:common/extensions/ifilter_list_extensions.dart';
import 'package:common/infrastructure/infrastructure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_filters.freezed.dart';

@freezed
abstract class ArtistFilters with _$ArtistFilters {
  const ArtistFilters._();

  factory ArtistFilters({
    required PhraseFilter phraseFilter,
    required CityFilter cityFilter,
  }) = _ArtistFilters;

  factory ArtistFilters.empty() => ArtistFilters(
        phraseFilter: PhraseFilter.empty(),
        cityFilter: CityFilter.empty(),
      );

  String buildFilters() {
    final filterList = <IFilter>[
      cityFilter,
    ];
    return filterList.buildFilters();
  }
}
