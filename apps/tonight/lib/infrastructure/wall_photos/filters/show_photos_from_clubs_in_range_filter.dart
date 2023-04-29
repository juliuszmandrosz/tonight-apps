import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShowPhotosFromClubsInRangeFilter implements IFilter {
  final Option<LatLng> userLocation;
  final double maxDistance;
  static const fieldName = 'clubLocation';

  ShowPhotosFromClubsInRangeFilter({
    required this.userLocation,
    required this.maxDistance,
  });

  factory ShowPhotosFromClubsInRangeFilter.empty() =>
      ShowPhotosFromClubsInRangeFilter(
        userLocation: none(),
        maxDistance: 50,
      );

  @override
  String buildFilters(String query) {
    if (userLocation.isNone()) return query;
    final location = userLocation.getOrCrash();
    return TypesenseQueryBuilder.setAroundLatLng(
      query: query,
      lat: location.latitude,
      lng: location.longitude,
      radius: maxDistance,
      field: fieldName,
    );
  }

  ShowPhotosFromClubsInRangeFilter copyWith({
    Option<LatLng>? userLocation,
    double? maxDistance,
  }) {
    return ShowPhotosFromClubsInRangeFilter(
      userLocation: userLocation ?? this.userLocation,
      maxDistance: maxDistance ?? this.maxDistance,
    );
  }
}
