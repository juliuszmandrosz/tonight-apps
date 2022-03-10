import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/core/available_filters/available_filters_entity.dart';

part 'available_filters_dto.freezed.dart';
part 'available_filters_dto.g.dart';

@freezed
class AvailableFiltersDto with _$AvailableFiltersDto {
  const AvailableFiltersDto._();

  const factory AvailableFiltersDto({
    required List<String> allowedOutfits,
    required List<String> musicalGenres,
    required List<int> minAges,
    required int maxPrice,
  }) = _AvailableFiltersDto;

  factory AvailableFiltersDto.fromDomain(AvailableFilters filters) {
    return AvailableFiltersDto(
      allowedOutfits: filters.allowedOutfits,
      musicalGenres: filters.musicalGenres,
      minAges: filters.minAges,
      maxPrice: filters.maxPrice,
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
      minAges: minAges,
      maxPrice: maxPrice,
    );
  }
}
