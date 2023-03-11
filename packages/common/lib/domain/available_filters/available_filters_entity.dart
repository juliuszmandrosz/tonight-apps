import 'package:equatable/equatable.dart';

class AvailableFilters extends Equatable {
  final List<String> allowedOutfits;
  final List<String> musicalGenres;
  final List<String> currencies;
  final List<int> minAges;

  const AvailableFilters({
    required this.allowedOutfits,
    required this.musicalGenres,
    required this.currencies,
    required this.minAges,
  });

  @override
  List<Object> get props => [
        allowedOutfits,
        musicalGenres,
        currencies,
        minAges,
      ];
}
