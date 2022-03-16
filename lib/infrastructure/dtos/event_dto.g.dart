// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDto _$$_EventDtoFromJson(Map<String, dynamic> json) => _$_EventDto(
      clubId: json['clubId'] as String,
      eventName: json['eventName'] as String,
      clubName: json['clubName'] as String,
      eventDateTime:
          const TimestampJsonConverter().fromJson(json['eventDateTime'] as int),
      attending: json['attending'] as int,
      minAge: json['minAge'] as int,
      price: json['price'] as int,
      allowedOutfit: json['allowedOutfit'] as String,
      musicalGenres: (json['musicalGenres'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      artistName: json['artistName'] as String?,
      location: (json['_geoloc'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      cityId: json['cityId'] as String,
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      urlLinks: (json['urlLinks'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      isConcert: json['isConcert'] as bool? ?? false,
    );

Map<String, dynamic> _$$_EventDtoToJson(_$_EventDto instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'eventName': instance.eventName,
      'clubName': instance.clubName,
      'eventDateTime':
          const TimestampJsonConverter().toJson(instance.eventDateTime),
      'attending': instance.attending,
      'minAge': instance.minAge,
      'price': instance.price,
      'allowedOutfit': instance.allowedOutfit,
      'musicalGenres': instance.musicalGenres,
      'description': instance.description,
      'artistName': instance.artistName,
      '_geoloc': instance.location,
      'cityId': instance.cityId,
      'photos': instance.photos,
      'urlLinks': instance.urlLinks,
      'isConcert': instance.isConcert,
    };
