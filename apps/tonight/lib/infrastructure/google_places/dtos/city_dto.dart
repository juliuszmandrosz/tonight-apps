import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/places/city_entity.dart';

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

  City toDomain() {
    return City(
      id: id,
      name: name,
    );
  }
}
