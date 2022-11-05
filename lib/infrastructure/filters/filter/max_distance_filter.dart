import 'package:raver_clubs/infrastructure/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class MaxDistanceFilter implements IFilter {
  final Map<String, double> userLocation;
  final int maxDistance;

  MaxDistanceFilter({
    required this.userLocation,
    required this.maxDistance,
  });

  @override
  String buildFilters(String query) {
    if (userLocation.isEmpty) return query;
    return TypesenseQueryBuilder.setAroundLatLng(
      query: query,
      lat: userLocation[latitude]!,
      lng: userLocation[longitude]!,
      radius: maxDistance,
    );
  }

  MaxDistanceFilter copyWith({
    bool? enabled,
    Map<String, double>? userLocation,
    int? maxDistance,
  }) {
    return MaxDistanceFilter(
      userLocation: userLocation ?? this.userLocation,
      maxDistance: maxDistance ?? this.maxDistance,
    );
  }
}
