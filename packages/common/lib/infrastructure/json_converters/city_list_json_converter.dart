import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CityListJsonConverter
    implements JsonConverter<List<City>, List<dynamic>> {
  const CityListJsonConverter();

  @override
  List<City> fromJson(List<dynamic> cities) {
    return cities.map((c) => City(id: c['id'], name: c['name'])).toList();
  }

  @override
  List<dynamic> toJson(List<City> cities) {
    return cities.map((c) => {'id': c.id, 'name': c.name}).toList();
  }
}
