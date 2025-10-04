import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class CitiesFilter extends Equatable implements IFilter {
  final String cityId;
  final String cityName;
  static const fieldName = 'cities';
  static const propertyName = 'id';

  const CitiesFilter({required this.cityId, required this.cityName});

  factory CitiesFilter.empty() => const CitiesFilter(cityId: '', cityName: '');

  @override
  String buildFilters() {
    if (cityId.isEmpty) return '';
    return AlgoliaQueryBuilder.setObjectFilter(
      field: fieldName,
      property: propertyName,
      value: cityId,
    );
  }

  CitiesFilter copyWith({
    String? cityId,
    String? cityName,
  }) {
    return CitiesFilter(
      cityId: cityId ?? this.cityId,
      cityName: cityName ?? this.cityName,
    );
  }

  @override
  List<Object?> get props => [cityId, cityName];
}
