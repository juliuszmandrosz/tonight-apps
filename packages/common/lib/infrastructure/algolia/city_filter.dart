import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class CityFilter extends Equatable implements IFilter {
  final String cityId;
  final String cityName;
  static const fieldName = 'cityId';

  const CityFilter({
    required this.cityId,
    required this.cityName,
  });

  factory CityFilter.empty() => const CityFilter(cityId: '', cityName: '');

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

  @override
  List<Object?> get props => [cityId, cityName];
}
