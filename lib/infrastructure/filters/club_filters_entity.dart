import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/infrastructure/filters/filter/city_filter.dart';
import 'package:raver_clubs/infrastructure/filters/filter/currency_filter.dart';
import 'package:raver_clubs/infrastructure/filters/filter/max_distance_filter.dart';
import 'package:raver_clubs/infrastructure/filters/filter/phrase_filter.dart';

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
        maxDistanceFilter: MaxDistanceFilter(
          enabled: true,
          userLocation: {},
          maxDistance: 50,
        ),
        currencyFilter: CurrencyFilter(currency: ''),
        cityFilter: CityFilter(cityId: ''),
      );

  String buildFilters() {
    var query = '';
    final filterList = [maxDistanceFilter, currencyFilter];
    for (final filter in filterList) {
      final previousQuery = query;
      query = filter.buildFilters(query);
      if (filter != filterList.last && previousQuery != query) {
        query += ' && ';
      }
    }
    return query;
  }
}
