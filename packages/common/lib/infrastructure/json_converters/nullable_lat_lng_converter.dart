import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NullableLatLngConverter
    implements JsonConverter<LatLng?, List<dynamic>?> {
  const NullableLatLngConverter();

  @override
  LatLng? fromJson(List<dynamic>? location) {
    return location != null ? LatLng(location[0], location[1]) : null;
  }

  @override
  List<dynamic>? toJson(LatLng? location) {
    return location != null ? [location.latitude, location.longitude] : null;
  }
}
