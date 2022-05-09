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
      minAge: json['minAge'] as int,
      price: json['price'] as int,
      currency: json['currency'] as String,
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
      attending: json['attending'] as int? ?? 0,
      isCanceled: json['isCanceled'] as bool? ?? false,
      isBeingPostponed: json['isBeingPostponed'] as bool? ?? false,
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
      'minAge': instance.minAge,
      'price': instance.price,
      'currency': instance.currency,
      'allowedOutfit': instance.allowedOutfit,
      'musicalGenres': instance.musicalGenres,
      'description': instance.description,
      'artistName': instance.artistName,
      '_geoloc': instance.location,
      'cityId': instance.cityId,
      'photos': instance.photos,
      'urlLinks': instance.urlLinks,
      'isConcert': instance.isConcert,
      'attending': instance.attending,
      'isCanceled': instance.isCanceled,
      'isBeingPostponed': instance.isBeingPostponed,
    };
