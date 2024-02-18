import 'package:common/common.dart';

class MinAgesFilter<T> implements IFilter {
  final List<int> minAges;
  static const fieldName = 'minAge';

  MinAgesFilter({required this.minAges});

  factory MinAgesFilter.empty() => MinAgesFilter(
        minAges: [],
      );

  @override
  String buildFilters() {
    if (minAges.isEmpty) return '';
    return AlgoliaQueryBuilder.setMultipleOrFilters(
      field: fieldName,
      values: minAges.map((e) => '$e').toList(),
    );
  }
}
