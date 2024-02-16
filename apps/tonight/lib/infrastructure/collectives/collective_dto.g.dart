// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collective_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectiveDtoImpl _$$CollectiveDtoImplFromJson(Map<String, dynamic> json) =>
    _$CollectiveDtoImpl(
      collectiveName: json['collectiveName'] as String,
      collectivePhotoUrl: json['collectivePhotoUrl'] as String,
      reviewCount: json['reviewCount'] as int,
      reviewAvg: (json['reviewAvg'] as num).toDouble(),
      cities: json['cities'] == null
          ? const []
          : const CityJsonConverter()
              .fromJson(json['cities'] as Map<String, dynamic>),
      socialMedia: json['socialMedia'] == null
          ? const []
          : const SocialMediaJsonConverter()
              .fromJson(json['socialMedia'] as Map<String, dynamic>),
      bio: json['bio'] as String? ?? '',
      residentIds: (json['residentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      musicalGenres: (json['musicalGenres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CollectiveDtoImplToJson(_$CollectiveDtoImpl instance) =>
    <String, dynamic>{
      'collectiveName': instance.collectiveName,
      'collectivePhotoUrl': instance.collectivePhotoUrl,
      'reviewCount': instance.reviewCount,
      'reviewAvg': instance.reviewAvg,
      'cities': const CityJsonConverter().toJson(instance.cities),
      'socialMedia':
          const SocialMediaJsonConverter().toJson(instance.socialMedia),
      'bio': instance.bio,
      'residentIds': instance.residentIds,
      'musicalGenres': instance.musicalGenres,
    };
