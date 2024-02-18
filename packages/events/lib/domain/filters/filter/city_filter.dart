import 'package:common/common.dart';

class CityFilter implements IFilter {
  final String cityId;
  final String cityName;
  static const fieldName = 'cityId';

  CityFilter({
    required this.cityId,
    required this.cityName,
  });

  factory CityFilter.empty() => CityFilter(cityId: '', cityName: '');

  @override
  String buildFilters() {
    if (cityId.isEmpty) return '';
    return AlgoliaQueryBuilder.setStringFilter(
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
