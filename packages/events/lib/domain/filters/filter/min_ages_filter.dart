import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class MinAgesFilter extends Equatable implements IFilter {
  final List<int> minAges;
  static const fieldName = 'minAge';

  const MinAgesFilter({required this.minAges});

  factory MinAgesFilter.empty() => const MinAgesFilter(
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

  @override
  List<Object?> get props => [minAges];
}
