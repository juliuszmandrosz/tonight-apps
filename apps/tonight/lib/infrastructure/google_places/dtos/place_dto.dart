import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/places/place_entity.dart';

part 'place_dto.freezed.dart';
part 'place_dto.g.dart';

@freezed
class PlaceDto with _$PlaceDto {
  const PlaceDto._();

  @JsonSerializable()
  const factory PlaceDto({
    required String id,
    required String name,
  }) = _PlaceDto;

  factory PlaceDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceDtoFromJson(json);

  Place toDomain() {
    return Place(
      id: id,
      name: name,
    );
  }
}
