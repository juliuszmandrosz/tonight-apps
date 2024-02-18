import 'package:clubs/infrastructure/filters/filter/city_filter.dart';
import 'package:clubs/infrastructure/filters/filter/currency_filter.dart';
import 'package:common/extensions/ifilter_list_extensions.dart';
import 'package:common/infrastructure/algolia/max_distance_filter.dart';
import 'package:common/infrastructure/algolia/phrase_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_filters_entity.freezed.dart';

@freezed
abstract class ClubFilters with _$ClubFilters {
  const ClubFilters._();

  factory ClubFilters({
    required PhraseFilter phraseFilter,
    required MaxDistanceFilter maxDistanceFilter,
    required CurrencyFilter currencyFilter,
    required CityFilter cityFilter,
  }) = _ClubFilter;

  factory ClubFilters.empty() => ClubFilters(
        phraseFilter: PhraseFilter(phrase: ''),
        maxDistanceFilter: MaxDistanceFilter.empty(),
        currencyFilter: CurrencyFilter(currency: ''),
        cityFilter: CityFilter.empty(),
      );

  String buildFilters() {
    final filterList = [
      currencyFilter,
      cityFilter,
    ];
    return filterList.buildFilters();
  }
}
