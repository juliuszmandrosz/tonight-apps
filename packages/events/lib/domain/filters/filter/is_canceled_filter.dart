import 'package:common/common.dart';

class IsCanceledFilter implements IFilter {
  final bool isCanceled;
  static const fieldName = 'isCanceled';

  IsCanceledFilter({required this.isCanceled});

  @override
  String buildFilters() {
    return AlgoliaQueryBuilder.setStringFilter(
      field: fieldName,
      value: isCanceled.toString(),
    );
  }
}
