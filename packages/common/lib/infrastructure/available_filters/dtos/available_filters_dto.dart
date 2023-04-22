import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/domain/available_filters/entities/available_filters_entity.dart';
import 'package:common/infrastructure/available_filters/dtos/city_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_filters_dto.freezed.dart';
part 'available_filters_dto.g.dart';

@freezed
class AvailableFiltersDto with _$AvailableFiltersDto {
  const AvailableFiltersDto._();

  @JsonSerializable(explicitToJson: true)
  @JsonSerializable()
  const factory AvailableFiltersDto({
    required List<String> allowedOutfits,
    required List<String> musicalGenres,
    required List<String> currencies,
    required List<int> minAges,
    required List<CityDto> cities,
  }) = _AvailableFiltersDto;

  factory AvailableFiltersDto.fromJson(Map<String, dynamic> json) =>
      _$AvailableFiltersDtoFromJson(json);

  factory AvailableFiltersDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return AvailableFiltersDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  AvailableFilters toDomain() {
    return AvailableFilters(
      allowedOutfits: allowedOutfits,
      musicalGenres: musicalGenres,
      currencies: currencies,
      minAges: minAges,
      cities: cities.map((city) => city.toDomain()).toList(),
    );
  }
}
