import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class ClubFilter extends Equatable implements IFilter {
  final String? clubId;
  static const fieldName = 'clubId';

  const ClubFilter({required this.clubId});

  factory ClubFilter.empty() => const ClubFilter(clubId: null);

  @override
  String buildFilters() {
    if (clubId == null) return '';
    return AlgoliaQueryBuilder.setStringFilter(
      field: fieldName,
      value: clubId!,
    );
  }

  @override
  List<Object?> get props => [clubId];
}
