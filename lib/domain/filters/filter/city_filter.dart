import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class CityFilter implements IFilter {
  final String cityId;
  final String cityName;
  static const fieldName = 'cityId';

  CityFilter({
    required this.cityId,
    required this.cityName,
  });

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if(cityId.isEmpty) return query;
    return AlgoliaQueryBuilder.setFacetFilter(
      query: query,
      field: fieldName,
      value: cityId,
    );
  }

  CityFilter copyWith({
    String? cityId,
    String? cityName,
  }) {
    return CityFilter(
      cityId: cityId ?? this.cityId,
      cityName: cityName ?? this.cityName,
    );
  }
}
