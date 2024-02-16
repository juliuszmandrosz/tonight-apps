// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistDtoImpl _$$ArtistDtoImplFromJson(Map<String, dynamic> json) =>
    _$ArtistDtoImpl(
      artistName: json['artistName'] as String,
      artistPhotoUrl: json['artistPhotoUrl'] as String,
      cityId: json['cityId'] as String,
      cityName: json['cityName'] as String,
      musicalGenres: (json['musicalGenres'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      socialMedia: json['socialMedia'] == null
          ? const []
          : const SocialMediaJsonConverter()
              .fromJson(json['socialMedia'] as Map<String, dynamic>),
      bookedDates: json['bookedDates'] == null
          ? const []
          : const FirebaseTimestampListJsonConverter()
              .fromJson(json['bookedDates'] as List<Timestamp>),
      collectiveIds: (json['collectiveIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      bio: json['bio'] as String? ?? '',
    );

Map<String, dynamic> _$$ArtistDtoImplToJson(_$ArtistDtoImpl instance) =>
    <String, dynamic>{
      'artistName': instance.artistName,
      'artistPhotoUrl': instance.artistPhotoUrl,
      'cityId': instance.cityId,
      'cityName': instance.cityName,
      'musicalGenres': instance.musicalGenres,
      'socialMedia':
          const SocialMediaJsonConverter().toJson(instance.socialMedia),
      'bookedDates': const FirebaseTimestampListJsonConverter()
          .toJson(instance.bookedDates),
      'collectiveIds': instance.collectiveIds,
      'bio': instance.bio,
    };
