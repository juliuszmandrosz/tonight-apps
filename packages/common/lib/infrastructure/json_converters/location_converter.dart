import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/constants/constants.dart';

class LocationConverter
    implements JsonConverter<Map<String, double>, List<dynamic>> {
  const LocationConverter();

  @override
  Map<String, double> fromJson(List<dynamic> location) {
    const keys = [latitude, longitude];
    return {for (final key in keys) key: location[keys.indexOf(key)]};
  }

  @override
  List<dynamic> toJson(Map<String, double> location) {
    return [location[latitude], location[longitude]];
  }
}
