import 'package:algolia/algolia.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_events/domain/filters/filter/allowed_outfits_filter.dart';
import 'package:raver_events/domain/filters/filter/city_filter.dart';
import 'package:raver_events/domain/filters/filter/club_filter.dart';
import 'package:raver_events/domain/filters/filter/date_range_filter.dart';
import 'package:raver_events/domain/filters/filter/is_concert_filter.dart';
import 'package:raver_events/domain/filters/filter/max_distance_filter.dart';
import 'package:raver_events/domain/filters/filter/min_ages_filter.dart';
import 'package:raver_events/domain/filters/filter/musical_genres_filter.dart';
import 'package:raver_events/domain/filters/filter/price_range_filter.dart';
import 'filter/phrase_filter.dart';
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
    required IsConcertFilter isConcertFilter,
    required ShowOnlyFilter showOnlyFilter,
  }) = _EventFilters;

  factory EventFilters.empty() => EventFilters(
        phraseFilter: PhraseFilter(phrase: ''),
        minAgesFilter: MinAgesFilter(minAges: []),
        musicalGenresFilter: MusicalGenresFilter(musicalGenres: []),
        allowedOutfitsFilter: AllowedOutfitsFilter(allowedOutfits: []),
        priceRangeFilter: PriceRangeFilter(minPrice: 0),
        cityFilter: CityFilter(cityId: '', cityName: ''),
        maxDistanceFilter: MaxDistanceFilter(
          enabled: true,
          userLocation: {},
          maxDistance: 50,
        ),
        dateRangeFilter: DateRangeFilter(fromDate: null, toDate: null),
        isConcertFilter: IsConcertFilter(isConcert: null),
        clubFilter: ClubFilter(clubId: null),
        showOnlyFilter: ShowOnlyFilter(
          showOnlyPast: false,
          showOnlyLive: false,
          showOnlyUpcoming: false,
        ),
      );

  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    final filterList = [
      phraseFilter,
      priceRangeFilter,
      minAgesFilter,
      musicalGenresFilter,
      allowedOutfitsFilter,
      maxDistanceFilter,
      cityFilter,
      clubFilter,
      dateRangeFilter,
      isConcertFilter,
      showOnlyFilter,
    ];
    for (final filter in filterList) {
      query = filter.buildQuery(query);
    }
    return query;
  }
}
