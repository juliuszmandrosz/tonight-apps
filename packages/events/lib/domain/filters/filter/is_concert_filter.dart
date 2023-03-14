import 'package:events/domain/filters/filter/ifilter.dart';
import 'package:common/common.dart';

class IsConcertFilter implements IFilter {
  final bool? isConcert;
  static const fieldName = 'isConcert';

  IsConcertFilter({required this.isConcert});

  @override
  String buildFilters(String query) {
    if (isConcert == null) return query;
    return TypesenseQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: isConcert.toString(),
    );
  }
}
