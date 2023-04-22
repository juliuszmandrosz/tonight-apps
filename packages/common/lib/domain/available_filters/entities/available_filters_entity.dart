import 'package:common/domain/available_filters/entities/city_entity.dart';
import 'package:equatable/equatable.dart';

class AvailableFilters extends Equatable {
  final List<String> allowedOutfits;
  final List<String> musicalGenres;
  final List<String> currencies;
  final List<int> minAges;
  final List<City> cities;

  const AvailableFilters({
    required this.allowedOutfits,
    required this.musicalGenres,
    required this.currencies,
    required this.minAges,
    required this.cities,
  });

  @override
  List<Object> get props => [
        allowedOutfits,
        musicalGenres,
        currencies,
        minAges,
        cities,
      ];
}
