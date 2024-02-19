import 'package:common/extensions/option_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MaxDistanceFilter extends Equatable {
  final bool enabled;
  final Option<LatLng> userLocation;
  final int maxDistance;

  const MaxDistanceFilter({
    required this.enabled,
    required this.userLocation,
    required this.maxDistance,
  });

  factory MaxDistanceFilter.empty() => MaxDistanceFilter(
        enabled: true,
        userLocation: none(),
        maxDistance: 50,
      );

  Tuple2<String?, int?> buildFilter() {
    if (userLocation.isNone() || !enabled) return const Tuple2(null, null);
    final location = userLocation.getOrCrash();
    return Tuple2(
      '${location.latitude},${location.longitude}',
      maxDistance * 1000,
    );
  }

  MaxDistanceFilter copyWith({
    bool? enabled,
    Option<LatLng>? userLocation,
    int? maxDistance,
  }) {
    return MaxDistanceFilter(
      enabled: enabled ?? this.enabled,
      userLocation: userLocation ?? this.userLocation,
      maxDistance: maxDistance ?? this.maxDistance,
    );
  }

  @override
  List<Object?> get props => [enabled, userLocation, maxDistance];
}
