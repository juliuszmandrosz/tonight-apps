import 'package:common/common.dart';

class MaxDistanceFilter implements IFilter {
  final bool enabled;
  final Map<String, double> userLocation;
  final int maxDistance;

  MaxDistanceFilter({
    required this.enabled,
    required this.userLocation,
    required this.maxDistance,
  });

  @override
  String buildFilters(String query) {
    if (userLocation.isEmpty || !enabled) return query;
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
      enabled: enabled ?? this.enabled,
      userLocation: userLocation ?? this.userLocation,
      maxDistance: maxDistance ?? this.maxDistance,
    );
  }
}
