import 'package:common/common.dart';

extension IFilterExtensions on List<IFilter> {
  String buildFilters() {
    return map((f) => f.buildFilters())
        .where((f) => f.isNotEmpty)
        .join(' AND ');
  }
}
