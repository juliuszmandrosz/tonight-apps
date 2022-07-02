class TypesenseQueryBuilder {
  static String setNumericBetween({
    required String query,
    required String field,
    required int from,
    required int to,
  }) {
    return query += '$field:[$from..$to]';
  }

  static String setNumericHigherThan({
    required String query,
    required String field,
    required int than,
  }) {
    return query += '$field:>$than';
  }

  static String setNumericLowerThan({
    required String query,
    required String field,
    required int than,
  }) {
    return query += '$field:<$than';
  }

  static String setNumericHigherEqualThan({
    required String query,
    required String field,
    required int than,
  }) {
    return query += '$field:>=$than';
  }

  static String setNumericLowerEqualThan({
    required String query,
    required String field,
    required int than,
  }) {
    return query += '$field:<=$than';
  }

  static String setFacetListFilter({
    required String query,
    required String field,
    required List<String> values,
  }) {
    final facetFilters = <String>[];
    for (var value in values) {
      facetFilters.add(value);
      if (value != values.last) {
        facetFilters.add(', ');
      }
    }
    return query += '$field: [$facetFilters]';
  }

  static String setFacetFilter({
    required String query,
    required String field,
    required String value,
  }) {
    return query += '$field: $value';
  }

  static String setAroundLatLng({
    required String query,
    required double lat,
    required double lng,
    required int radius,
  }) {
    return 'location:($lat, $lng, $radius km)';
  }
}
