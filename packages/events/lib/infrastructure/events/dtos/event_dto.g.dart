// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDto _$$_EventDtoFromJson(Map<String, dynamic> json) => _$_EventDto(
      clubId: json['clubId'] as String,
      eventName: json['eventName'] as String,
      clubName: json['clubName'] as String,
      eventStartDateTime: const TimestampJsonConverter()
          .fromJson(json['eventStartDateTime'] as int),
      eventEndDateTime: const TimestampJsonConverter()
          .fromJson(json['eventEndDateTime'] as int),
      originalStartDateTime: const TimestampJsonConverter()
          .fromJson(json['originalStartDateTime'] as int),
      minAge: json['minAge'] as int,
      price: json['price'] as int,
      currency: json['currency'] as String,
      eventPhotoUrl: json['eventPhotoUrl'] as String,
      allowedOutfit: json['allowedOutfit'] as String,
      musicalGenres: (json['musicalGenres'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      artistName: json['artistName'] as String?,
      location: const LocationConverter().fromJson(json['location'] as List),
      cityId: json['cityId'] as String,
      urlLinks: (json['urlLinks'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      isConcert: json['isConcert'] as bool? ?? false,
      attending: json['attending'] as int? ?? 0,
      isCanceled: json['isCanceled'] as bool? ?? false,
      isBeingPostponed: json['isBeingPostponed'] as bool? ?? false,
      locationString: json['locationString'] as String?,
      clubPhotoUrl: json['clubPhotoUrl'] as String?,
    );

Map<String, dynamic> _$$_EventDtoToJson(_$_EventDto instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'eventName': instance.eventName,
      'clubName': instance.clubName,
      'eventStartDateTime':
          const TimestampJsonConverter().toJson(instance.eventStartDateTime),
      'eventEndDateTime':
          const TimestampJsonConverter().toJson(instance.eventEndDateTime),
      'originalStartDateTime':
          const TimestampJsonConverter().toJson(instance.originalStartDateTime),
      'minAge': instance.minAge,
      'price': instance.price,
      'currency': instance.currency,
      'eventPhotoUrl': instance.eventPhotoUrl,
      'allowedOutfit': instance.allowedOutfit,
      'musicalGenres': instance.musicalGenres,
      'description': instance.description,
      'artistName': instance.artistName,
      'location': const LocationConverter().toJson(instance.location),
      'cityId': instance.cityId,
      'urlLinks': instance.urlLinks,
      'isConcert': instance.isConcert,
      'attending': instance.attending,
      'isCanceled': instance.isCanceled,
      'isBeingPostponed': instance.isBeingPostponed,
      'locationString': instance.locationString,
      'clubPhotoUrl': instance.clubPhotoUrl,
    };
