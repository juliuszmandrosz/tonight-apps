import 'package:common/infrastructure/algolia/ifilter.dart';

String buildFilters(List<IFilter> filters) {
  return filters
      .map((f) => f.buildFilters())
      .where((f) => f.isNotEmpty)
      .join(' AND ');
}
