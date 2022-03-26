import 'package:algolia/algolia.dart';

class AlgoliaQueryBuilder {
  static AlgoliaQuery setNumericBetween({
    required AlgoliaQuery query,
    required String field,
    required int from,
    required int to,
  }) {
    return query.setNumericFilter('$field:$from TO $to');
  }

  static AlgoliaQuery setNumericHigherThan({
    required AlgoliaQuery query,
    required String field,
    required int than,
  }) {
    return query.setNumericFilter('$field > $than');
  }

  static AlgoliaQuery setNumericLowerThan({
    required AlgoliaQuery query,
    required String field,
    required int than,
  }) {
    return query.setNumericFilter('$field < $than');
  }

  static AlgoliaQuery setNumericHigherEqualThan({
    required AlgoliaQuery query,
    required String field,
    required int than,
  }) {
    return query.setNumericFilter('$field >= $than');
  }

  static AlgoliaQuery setNumericLowerEqualThan({
    required AlgoliaQuery query,
    required String field,
    required int than,
  }) {
    return query.setNumericFilter('$field <= $than');
  }

  static AlgoliaQuery setFacetListFilter({
    required AlgoliaQuery query,
    required String field,
    required List<String> values,
  }) {
    final facetFilters = <String>[];
    for (var value in values) {
      facetFilters.add('$field:$value');
    }
    return query.facetFilter(facetFilters);
  }

  static AlgoliaQuery setFacetFilter({
    required AlgoliaQuery query,
    required String field,
    required String value,
  }) {
    return query.facetFilter('$field:$value');
  }

  static AlgoliaQuery setAroundLatLng({
    required AlgoliaQuery query,
    required double lat,
    required double lng,
    required int radius,
  }) {
    final aroundLatLng = query.setAroundLatLng('$lat, $lng');
    return aroundLatLng.setAroundRadius(radius * 1000);
  }

  static AlgoliaQuery setTextFilter({
    required AlgoliaQuery query,
    required String value,
  }) {
    return query.query(value);
  }
}
