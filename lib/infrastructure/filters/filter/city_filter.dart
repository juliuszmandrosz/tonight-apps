import 'package:raver_clubs/infrastructure/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class CityFilter implements IFilter {
  final String cityId;
  static const fieldName = 'cityId';

  CityFilter({required this.cityId});

  @override
  String buildFilters(String query) {
    if (cityId.isEmpty) return query;
    return TypesenseQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: cityId,
    );
  }

  CityFilter copyWith({
    String? cityId,
    String? cityName,
  }) {
    return CityFilter(cityId: cityId ?? this.cityId);
  }
}
