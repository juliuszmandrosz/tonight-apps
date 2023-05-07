import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MaxDistanceFilter implements IFilter {
  final bool enabled;
  final Option<LatLng> userLocation;
  final double maxDistance;

  MaxDistanceFilter({
    required this.enabled,
    required this.userLocation,
    required this.maxDistance,
  });

  factory MaxDistanceFilter.empty() => MaxDistanceFilter(
        enabled: false,
        userLocation: none(),
        maxDistance: 50,
      );

  @override
  String buildFilters(String query) {
    if (userLocation.isNone() || !enabled) return query;
    final location = userLocation.getOrCrash();
    return TypesenseQueryBuilder.setAroundLatLng(
      query: query,
      lat: location.latitude,
      lng: location.longitude,
      radius: maxDistance,
    );
  }

  MaxDistanceFilter copyWith({
    bool? enabled,
    Option<LatLng>? userLocation,
    double? maxDistance,
  }) {
    return MaxDistanceFilter(
      enabled: enabled ?? this.enabled,
      userLocation: userLocation ?? this.userLocation,
      maxDistance: maxDistance ?? this.maxDistance,
    );
  }
}
