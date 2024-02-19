import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class ShowOnlyConcertsFilter extends Equatable implements IFilter {
  final bool showOnlyConcerts;
  static const fieldName = 'isConcert';

  const ShowOnlyConcertsFilter({required this.showOnlyConcerts});

  factory ShowOnlyConcertsFilter.empty() => const ShowOnlyConcertsFilter(
        showOnlyConcerts: false,
      );

  @override
  String buildFilters() {
    if (!showOnlyConcerts) return '';
    return AlgoliaQueryBuilder.setStringFilter(
      field: fieldName,
      value: showOnlyConcerts.toString(),
    );
  }

  @override
  List<Object?> get props => [showOnlyConcerts];
}
