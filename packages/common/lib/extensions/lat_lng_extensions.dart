import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logger/logger.dart';

extension LatLngX on LatLng {
  Future<String> getCityName() async {
    try {
      final placemarks = await placemarkFromCoordinates(
        latitude,
        longitude,
      );
      return placemarks.first.locality ?? '';
    } on PlatformException catch (e) {
      Logger().e(e.message);
      return '';
    }
  }
}
