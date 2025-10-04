import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CityJsonConverter
    implements JsonConverter<List<City>, Map<String, dynamic>> {
  const CityJsonConverter();

  @override
  List<City> fromJson(Map<String, dynamic> cities) {
    return cities.entries.map((e) => City(id: e.key, name: e.value)).toList();
  }

  @override
  Map<String, dynamic> toJson(List<City> cities) {
    return {
      for (final c in cities) c.id: c.name,
    };
  }
}
