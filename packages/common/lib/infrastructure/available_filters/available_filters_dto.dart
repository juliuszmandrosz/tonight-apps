import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/domain/available_filters/available_filters_entity.dart';

part 'available_filters_dto.freezed.dart';

part 'available_filters_dto.g.dart';

@freezed
class AvailableFiltersDto with _$AvailableFiltersDto {
  const AvailableFiltersDto._();

  @JsonSerializable()
  const factory AvailableFiltersDto({
    required List<String> allowedOutfits,
    required List<String> musicalGenres,
    required List<String> currencies,
    required List<int> minAges,
  }) = _AvailableFiltersDto;

  factory AvailableFiltersDto.fromDomain(AvailableFilters filters) {
    return AvailableFiltersDto(
      allowedOutfits: filters.allowedOutfits,
      musicalGenres: filters.musicalGenres,
      currencies: filters.currencies,
      minAges: filters.minAges,
    );
  }

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
    );
  }
}
