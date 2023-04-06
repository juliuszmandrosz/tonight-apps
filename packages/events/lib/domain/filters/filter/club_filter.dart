import 'package:common/common.dart';

class ClubFilter implements IFilter {
  final String? clubId;
  static const fieldName = 'clubId';

  ClubFilter({required this.clubId});

  @override
  String buildFilters(String query) {
    if (clubId == null) return query;
    return TypesenseQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: clubId!,
    );
  }
}
