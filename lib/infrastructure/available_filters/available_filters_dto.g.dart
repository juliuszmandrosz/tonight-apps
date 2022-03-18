// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_filters_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AvailableFiltersDto _$$_AvailableFiltersDtoFromJson(
        Map<String, dynamic> json) =>
    _$_AvailableFiltersDto(
      allowedOutfits: (json['allowedOutfits'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      musicalGenres: (json['musicalGenres'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      minAges: (json['minAges'] as List<dynamic>).map((e) => e as int).toList(),
      maxPrice: json['maxPrice'] as int,
    );

Map<String, dynamic> _$$_AvailableFiltersDtoToJson(
        _$_AvailableFiltersDto instance) =>
    <String, dynamic>{
      'allowedOutfits': instance.allowedOutfits,
      'musicalGenres': instance.musicalGenres,
      'minAges': instance.minAges,
      'maxPrice': instance.maxPrice,
    };
