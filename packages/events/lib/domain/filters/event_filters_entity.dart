import 'package:events/domain/filters/filter/allowed_outfits_filter.dart';
import 'package:events/domain/filters/filter/city_filter.dart';
import 'package:events/domain/filters/filter/club_filter.dart';
import 'package:events/domain/filters/filter/currency_filter.dart';
import 'package:events/domain/filters/filter/date_includes_filter.dart';
import 'package:events/domain/filters/filter/date_range_filter.dart';
import 'package:events/domain/filters/filter/event_filters_show_only_concerts.dart';
import 'package:events/domain/filters/filter/is_canceled_filter.dart';
import 'package:events/domain/filters/filter/max_distance_filter.dart';
import 'package:events/domain/filters/filter/min_ages_filter.dart';
import 'package:events/domain/filters/filter/musical_genres_filter.dart';
import 'package:events/domain/filters/filter/phrase_filter.dart';
import 'package:events/domain/filters/filter/price_range_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'filter/show_only_filter.dart';

part 'event_filters_entity.freezed.dart';

@freezed
class EventFilters with _$EventFilters {
  const EventFilters._();

  factory EventFilters({
    required PhraseFilter phraseFilter,
    required PriceRangeFilter priceRangeFilter,
    required MinAgesFilter minAgesFilter,
    required MusicalGenresFilter musicalGenresFilter,
    required AllowedOutfitsFilter allowedOutfitsFilter,
    required MaxDistanceFilter maxDistanceFilter,
    required CityFilter cityFilter,
    required ClubFilter clubFilter,
    required DateRangeFilter dateRangeFilter,
    required ShowOnlyConcertsFilter showOnlyConcertsFilter,
    required ShowOnlyFilter showOnlyFilter,
    required DateIncludesFilter dateIncludesFilter,
    required CurrencyFilter currencyFilter,
    required IsCanceledFilter isCanceledFilter,
  }) = _EventFilters;

  factory EventFilters.empty() => EventFilters(
        phraseFilter: PhraseFilter.empty(),
        minAgesFilter: MinAgesFilter.empty(),
        musicalGenresFilter: MusicalGenresFilter.empty(),
        allowedOutfitsFilter: AllowedOutfitsFilter.empty(),
        priceRangeFilter: PriceRangeFilter.empty(),
        cityFilter: CityFilter.empty(),
        maxDistanceFilter: MaxDistanceFilter.empty(),
        dateRangeFilter: DateRangeFilter.empty(),
        showOnlyConcertsFilter: ShowOnlyConcertsFilter.empty(),
        clubFilter: ClubFilter.empty(),
        showOnlyFilter: ShowOnlyFilter(
          showOnlyPast: false,
          showOnlyLive: false,
          showOnlyUpcoming: false,
        ),
        dateIncludesFilter: DateIncludesFilter(
          fromDate: null,
          toDate: null,
        ),
        currencyFilter: CurrencyFilter(currency: ''),
        isCanceledFilter: IsCanceledFilter(isCanceled: false),
      );

  String buildFilters() {
    var query = '';

    final filterList = [
      priceRangeFilter,
      minAgesFilter,
      musicalGenresFilter,
      allowedOutfitsFilter,
      maxDistanceFilter,
      cityFilter,
      clubFilter,
      dateRangeFilter,
      showOnlyConcertsFilter,
      showOnlyFilter,
      dateIncludesFilter,
      currencyFilter,
      isCanceledFilter,
    ];
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
