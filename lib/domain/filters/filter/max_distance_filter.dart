import 'package:algolia/algolia.dart';
import 'package:raver_common/constants/location_constants.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

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
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    if (userLocation.isEmpty || !enabled) return query;
    return AlgoliaQueryBuilder.setAroundLatLng(
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
