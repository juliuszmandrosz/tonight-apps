import 'package:common/common.dart';

class ShowOnlyConcertsFilter implements IFilter {
  final bool showOnlyConcerts;
  static const fieldName = 'isConcert';

  ShowOnlyConcertsFilter({required this.showOnlyConcerts});

  factory ShowOnlyConcertsFilter.empty() => ShowOnlyConcertsFilter(
        showOnlyConcerts: false,
      );

  @override
  String buildFilters(String query) {
    if (!showOnlyConcerts) return query;
    return TypesenseQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: showOnlyConcerts.toString(),
    );
  }
}
