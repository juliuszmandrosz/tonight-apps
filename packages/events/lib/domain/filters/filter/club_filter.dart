import 'package:common/common.dart';

class ClubFilter implements IFilter {
  final String? clubId;
  static const fieldName = 'clubId';

  ClubFilter({required this.clubId});

  factory ClubFilter.empty() => ClubFilter(clubId: null);

  @override
  String buildFilters() {
    if (clubId == null) return '';
    return AlgoliaQueryBuilder.setStringFilter(
      field: fieldName,
      value: clubId!,
    );
  }
}
