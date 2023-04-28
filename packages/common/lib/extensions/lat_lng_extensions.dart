import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

extension LatLngX on LatLng {
  Future<String> getCityName() async {
    final placemarks = await placemarkFromCoordinates(
      latitude,
      longitude,
    );
    return placemarks.first.locality ?? '';
  }
}
