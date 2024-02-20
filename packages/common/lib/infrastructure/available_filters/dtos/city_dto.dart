import 'package:common/domain/available_filters/entities/city_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_dto.freezed.dart';
part 'city_dto.g.dart';

@freezed
class CityDto with _$CityDto {
  const CityDto._();

  @JsonSerializable()
  const factory CityDto({
    required String id,
    required String name,
  }) = _CityDto;

  factory CityDto.fromJson(Map<String, dynamic> json) =>
      _$CityDtoFromJson(json);

  factory CityDto.fromDomain(City city) {
    return CityDto(
      id: city.id,
      name: city.name,
    );
  }

  City toDomain() {
    return City(
      id: id,
      name: name,
    );
  }
}
