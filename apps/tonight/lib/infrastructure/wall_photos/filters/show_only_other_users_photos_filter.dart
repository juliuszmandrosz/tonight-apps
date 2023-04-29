import 'package:common/common.dart';

class ShowOnlyOtherUsersPhotosFilter implements IFilter {
  final String currentUserId;
  static const fieldName = 'userId';

  ShowOnlyOtherUsersPhotosFilter({required this.currentUserId});

  factory ShowOnlyOtherUsersPhotosFilter.empty() =>
      ShowOnlyOtherUsersPhotosFilter(currentUserId: '');

  @override
  String buildFilters(String query) {
    if (currentUserId.isEmpty) return query;
    return TypesenseQueryBuilder.setFacetNotEqualsFilter(
      query: query,
      field: fieldName,
      value: currentUserId,
    );
  }
}
