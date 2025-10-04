import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class IsCanceledFilter extends Equatable implements IFilter {
  final bool isCanceled;
  static const fieldName = 'isCanceled';

  const IsCanceledFilter({required this.isCanceled});

  @override
  String buildFilters() {
    return AlgoliaQueryBuilder.setStringFilter(
      field: fieldName,
      value: isCanceled.toString(),
    );
  }

  @override
  List<Object?> get props => [isCanceled];
}
