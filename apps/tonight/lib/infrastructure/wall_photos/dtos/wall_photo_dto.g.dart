// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_photo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WallPhotoDtoImpl _$$WallPhotoDtoImplFromJson(Map<String, dynamic> json) =>
    _$WallPhotoDtoImpl(
      photoUrl: json['photoUrl'] as String,
      venueId: json['venueId'] as String,
      venueName: json['venueName'] as String,
      venueLocation:
          const LatLngConverter().fromJson(json['venueLocation'] as List),
      userId: json['userId'] as String,
      username: json['username'] as String,
      eventId: json['eventId'] as String,
      eventName: json['eventName'] as String,
      eventEndDateTime: const TimestampJsonConverter()
          .fromJson(json['eventEndDateTime'] as int),
      createdAt:
          const TimestampJsonConverter().fromJson(json['createdAt'] as int),
      userProfilePhotoUrl: json['userProfilePhotoUrl'] as String?,
      timeTaskId: json['timeTaskId'] as String?,
      photoLocation: const NullableLatLngConverter()
          .fromJson(json['photoLocation'] as List?),
      isVerified: json['isVerified'] as bool? ?? false,
      isRewardAcquired: json['isRewardAcquired'] as bool? ?? false,
    );

Map<String, dynamic> _$$WallPhotoDtoImplToJson(_$WallPhotoDtoImpl instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'venueId': instance.venueId,
      'venueName': instance.venueName,
      'venueLocation': const LatLngConverter().toJson(instance.venueLocation),
      'userId': instance.userId,
      'username': instance.username,
      'eventId': instance.eventId,
      'eventName': instance.eventName,
      'eventEndDateTime':
          const TimestampJsonConverter().toJson(instance.eventEndDateTime),
      'createdAt': const TimestampJsonConverter().toJson(instance.createdAt),
      'userProfilePhotoUrl': instance.userProfilePhotoUrl,
      'timeTaskId': instance.timeTaskId,
      'photoLocation':
          const NullableLatLngConverter().toJson(instance.photoLocation),
      'isVerified': instance.isVerified,
      'isRewardAcquired': instance.isRewardAcquired,
    };
