import 'package:common/common.dart';

class ShowPhotosFromClubsFilter implements IFilter {
  final List<String> clubIds;
  static const fieldName = 'clubId';

  ShowPhotosFromClubsFilter({required this.clubIds});

  @override
  String buildFilters(String query) {
    if (clubIds.isEmpty) return query;
    return TypesenseQueryBuilder.setFacetListFilter(
      query: query,
      field: fieldName,
      values: clubIds,
    );
  }
}
