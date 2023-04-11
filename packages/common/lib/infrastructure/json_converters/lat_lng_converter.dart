import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LatLngConverter implements JsonConverter<LatLng, List<dynamic>> {
  const LatLngConverter();

  @override
  LatLng fromJson(List<dynamic> location) {
    return LatLng(location[0], location[1]);
  }

  @override
  List<dynamic> toJson(LatLng location) {
    return [location.latitude, location.longitude];
  }
}
