import 'package:common/common.dart';

class ShowOnlyPhotosFromClubFilter implements IFilter {
  final bool showOnlyPhotosFromClub;
  static const fieldName = 'isFromClub';

  ShowOnlyPhotosFromClubFilter({required this.showOnlyPhotosFromClub});

  factory ShowOnlyPhotosFromClubFilter.empty() => ShowOnlyPhotosFromClubFilter(
        showOnlyPhotosFromClub: false,
      );

  @override
  String buildFilters(String query) {
    if (!showOnlyPhotosFromClub) return query;
    return TypesenseQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: '$showOnlyPhotosFromClub',
    );
  }
}
