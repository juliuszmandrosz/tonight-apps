import 'package:algolia/algolia.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/domain.dart';

abstract class AlgoliaEventsApi {
  Future<AlgoliaQuerySnapshot> getEvents(
    EventFilters filters,
    SortModel sortModel,
    int pageSize,
    int offset,
  );
}

class AlgoliaEventsApiImpl implements AlgoliaEventsApi {
  final Algolia _algolia;

  AlgoliaEventsApiImpl(this._algolia);

  @override
  Future<AlgoliaQuerySnapshot> getEvents(
    EventFilters filters,
    SortModel sortModel,
    int pageSize,
    int offset,
  ) async {
    AlgoliaQuery query = _algolia.instance.index(_getIndexName(sortModel));

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
    query = _setDateRange(query, filters);
    query = _setClub(query, filters);
    query = _setShowOnlyLiveOption(query, filters);
    query = _setShowOnlyUpcomingOption(query, filters);
    query = _setShowOnlyPastOption(query, filters);

    query = query.setLength(pageSize).setOffset(offset);

    return await query.getObjects();
  }

  String _getIndexName(SortModel sortModel) {
    if (sortModel.fieldName == eventStartDateTime) {
      return sortModel.direction == SortDirection.desc
          ? 'events_eventStartDateTime_desc'
          : 'events';
    }

    return 'events';
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
    if (!_checkIfSelectByDayIsEnabled(filters)) {
      return query;
    }

    final endOfTheDay = filters.day!.add(const Duration(days: 1));
    final startTimestamp = filters.day!.millisecondsSinceEpoch;
    final endTimestamp = endOfTheDay.millisecondsSinceEpoch;

    return query.setNumericFilter(
      'eventStartDateTime:$startTimestamp TO $endTimestamp',
    );
  }

  AlgoliaQuery _setDateRange(AlgoliaQuery query, EventFilters filters) {
    if (filters.day != null || filters.showOnlyLive) return query;

    final startTimestamp = filters.startDate.millisecondsSinceEpoch;

    if (filters.endDate == null) {
      if (filters.showOnlyPast) return query;

      return query.setNumericFilter('eventEndDateTime >= $startTimestamp');
    }

    final endOfTheDay = filters.endDate!.add(const Duration(days: 1));
    final endTimestamp = endOfTheDay.millisecondsSinceEpoch;

    return query.setNumericFilter(
      'eventStartDateTime:$startTimestamp TO $endTimestamp',
    );
  }

  AlgoliaQuery _setShowOnlyLiveOption(
      AlgoliaQuery query, EventFilters filters) {
    if (!_checkIfShowOnlyLiveOptionIsEnabled(filters)) {
      return query;
    }

    final now = DateTime.now().millisecondsSinceEpoch;
    query = query.setNumericFilter('eventStartDateTime <= $now');
    return query.setNumericFilter('eventEndDateTime >= $now');
  }

  AlgoliaQuery _setShowOnlyUpcomingOption(
      AlgoliaQuery query, EventFilters filters) {
    if (!_checkIfShowOnlyUpcomingOptionIsEnabled((filters))) {
      return query;
    }

    final now = DateTime.now().millisecondsSinceEpoch;
    return query.setNumericFilter('eventStartDateTime > $now');
  }

  AlgoliaQuery _setShowOnlyPastOption(
      AlgoliaQuery query, EventFilters filters) {
    if (!_checkIfShowOnlyPastOptionIsEnabled(filters)) {
      return query;
    }

    final now = DateTime.now().millisecondsSinceEpoch;
    return query.setNumericFilter('eventEndDateTime < $now');
  }

  AlgoliaQuery _setClub(AlgoliaQuery query, EventFilters filters) {
    if (filters.clubId == null) return query;
    return query.facetFilter('clubId:${filters.clubId}');
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

  bool _checkIfShowOnlyLiveOptionIsEnabled(EventFilters filters) {
    return filters.showOnlyLive &&
        !filters.showOnlyPast &&
        !filters.showOnlyUpcoming;
  }

  bool _checkIfShowOnlyUpcomingOptionIsEnabled(EventFilters filters) {
    return filters.showOnlyUpcoming &&
        !filters.showOnlyPast &&
        !filters.showOnlyLive;
  }

  bool _checkIfShowOnlyPastOptionIsEnabled(EventFilters filters) {
    return filters.showOnlyPast &&
        !filters.showOnlyUpcoming &&
        !filters.showOnlyLive;
  }

  bool _checkIfSelectByDayIsEnabled(EventFilters filters) {
    return filters.day != null &&
        !filters.showOnlyLive &&
        filters.endDate == null;
  }
}
