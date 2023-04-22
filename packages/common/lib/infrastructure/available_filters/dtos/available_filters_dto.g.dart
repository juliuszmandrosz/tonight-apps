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
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      minAges: (json['minAges'] as List<dynamic>).map((e) => e as int).toList(),
      cities: (json['cities'] as List<dynamic>)
          .map((e) => CityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AvailableFiltersDtoToJson(
        _$_AvailableFiltersDto instance) =>
    <String, dynamic>{
      'allowedOutfits': instance.allowedOutfits,
      'musicalGenres': instance.musicalGenres,
      'currencies': instance.currencies,
      'minAges': instance.minAges,
      'cities': instance.cities.map((e) => e.toJson()).toList(),
    };
