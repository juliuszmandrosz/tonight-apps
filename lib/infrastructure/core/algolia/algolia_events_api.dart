import 'package:algolia/algolia.dart';
import 'package:raver/domain/events/filters/event_filters_entity.dart';
import 'package:raver/presentation/commons/constants/location_constants.dart';

class AlgoliaEventsApi {
  final Algolia _algolia;

  AlgoliaEventsApi(this._algolia);

  Future<AlgoliaQuerySnapshot> getEvents(
    EventFilters filters,
    int pageSize,
    int offset,
  ) async {
    AlgoliaQuery query = _algolia.instance.index('events');

    if (filters.phrase.isNotEmpty) {
      query = query.query(filters.phrase);
    }

    query = _setPriceRange(query, filters);
    query = _setMusicalGenres(query, filters);
    query = _setAllowedOutfits(query, filters);
    query = _setMinAges(query, filters);
    query = _setIsConcertValue(query, filters);
    query = _setMaxDistance(query, filters);
    query = _setCity(query, filters);
    query = _setDay(query, filters);

    query = query.setLength(pageSize).setOffset(offset);

    return await query.getObjects();
  }

  AlgoliaQuery _setPriceRange(AlgoliaQuery query, EventFilters filters) {
    if (filters.maxPrice != null) {
      return query
          .setNumericFilter('price:${filters.minPrice} TO ${filters.maxPrice}');
    }

    return query.setNumericFilter('price >= ${filters.minPrice}');
  }

  AlgoliaQuery _setMusicalGenres(AlgoliaQuery query, EventFilters filters) {
    if (filters.musicalGenres.isEmpty) return query;

    final facetFilters = <String>[];
    for (var genre in filters.musicalGenres) {
      facetFilters.add(_getMusicalGenre(query, genre));
    }

    return query.facetFilter(facetFilters);
  }

  AlgoliaQuery _setAllowedOutfits(AlgoliaQuery query, EventFilters filters) {
    if (filters.allowedOutfits.isEmpty) return query;

    final facetFilters = <String>[];
    for (var outfit in filters.allowedOutfits) {
      facetFilters.add(_getAllowedOutfit(query, outfit));
    }

    return query.facetFilter(facetFilters);
  }

  AlgoliaQuery _setMinAges(AlgoliaQuery query, EventFilters filters) {
    if (filters.minAges.isEmpty) return query;

    final facetFilters = <String>[];
    for (var age in filters.minAges) {
      facetFilters.add(_getMinAge(query, age));
    }

    return query.facetFilter(facetFilters);
  }

  AlgoliaQuery _setIsConcertValue(AlgoliaQuery query, EventFilters filters) {
    if (filters.isConcert == null) return query;
    return query.facetFilter('isConcert:${filters.isConcert}');
  }

  AlgoliaQuery _setMaxDistance(AlgoliaQuery query, EventFilters filters) {
    if (!filters.isMaxDistanceOption || filters.userLocation.isEmpty) {
      return query;
    }

    final lat = filters.userLocation[latitude];
    final lng = filters.userLocation[longitude];
    final aroundLatLng = query.setAroundLatLng('$lat, $lng');
    return aroundLatLng.setAroundRadius(filters.maxDistance * 1000);
  }

  AlgoliaQuery _setCity(AlgoliaQuery query, EventFilters filters) {
    if (filters.cityId.isEmpty || filters.isMaxDistanceOption) return query;
    return query.facetFilter('cityId:${filters.cityId}');
  }

  AlgoliaQuery _setDay(AlgoliaQuery query, EventFilters filters) {
    if (filters.day == null) return query;

    final endOfTheDay = filters.day!.add(const Duration(days: 1));
    final startTimestamp = filters.day!.millisecondsSinceEpoch;
    final endTimestamp = endOfTheDay.millisecondsSinceEpoch;

    return query.setNumericFilter(
      'eventDateTime:$startTimestamp TO $endTimestamp',
    );
  }

  String _getMusicalGenre(AlgoliaQuery query, String genre) {
    return 'musicalGenres:$genre';
  }

  String _getAllowedOutfit(AlgoliaQuery query, String outfit) {
    return 'allowedOutfit:$outfit';
  }

  String _getMinAge(AlgoliaQuery query, int age) {
    return 'minAge:$age';
  }
}
