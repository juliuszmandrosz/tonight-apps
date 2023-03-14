import 'package:events/domain/filters/filter/ifilter.dart';
import 'package:common/common.dart';

class IsCanceledFilter implements IFilter {
  final bool isCanceled;
  static const fieldName = 'isCanceled';

  IsCanceledFilter({required this.isCanceled});

  @override
  String buildFilters(String query) {
    return TypesenseQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: isCanceled.toString(),
    );
  }
}
