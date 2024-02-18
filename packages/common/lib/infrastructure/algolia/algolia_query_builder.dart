class AlgoliaQueryBuilder {
  static String setNumericBetween({
    required String field,
    required int from,
    required int to,
  }) {
    return '$field:$from TO $to';
  }

  static String setNumericHigherThan({
    required String field,
    required int than,
  }) {
    return '$field > $than';
  }

  static String setNumericLowerThan({
    required String field,
    required int than,
  }) {
    return '$field < $than';
  }

  static String setNumericHigherEqualThan({
    required String field,
    required int than,
  }) {
    return '$field >= $than';
  }

  static String setNumericLowerEqualThan({
    required String field,
    required int than,
  }) {
    return '$field <= $than';
  }

  static String setMultipleOrFilters({
    required String field,
    required List<String> values,
  }) {
    if (values.isEmpty) {
      return '';
    }
    final orConditions = values.map((value) => "$field:'$value'").join(' OR ');
    return "($orConditions)";
  }

  static String setStringFilter({
    required String field,
    required String value,
  }) {
    return '$field:$value';
  }
}
