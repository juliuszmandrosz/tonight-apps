import 'package:equatable/equatable.dart';

class AvailableFilters extends Equatable {
  final List<String> allowedOutfits;
  final List<String> musicalGenres;
  final List<int> minAges;
  final int maxPrice;

  const AvailableFilters({
    required this.allowedOutfits,
    required this.musicalGenres,
    required this.minAges,
    required this.maxPrice,
  });

  @override
  List<Object> get props => [
        allowedOutfits,
        musicalGenres,
        minAges,
        maxPrice,
      ];
}
