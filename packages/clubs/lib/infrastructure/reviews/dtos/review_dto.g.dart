// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewDto _$$_ReviewDtoFromJson(Map<String, dynamic> json) => _$_ReviewDto(
      userOpinion: json['userOpinion'] as String,
      userRate: (json['userRate'] as num).toDouble(),
      userId: json['userId'] as String,
      username: json['username'] as String,
      eventId: json['eventId'] as String,
      eventName: json['eventName'] as String,
      dateAdded:
          const TimestampJsonConverter().fromJson(json['dateAdded'] as int),
      userPictureUrl: json['userPictureUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$_ReviewDtoToJson(_$_ReviewDto instance) =>
    <String, dynamic>{
      'userOpinion': instance.userOpinion,
      'userRate': instance.userRate,
      'userId': instance.userId,
      'username': instance.username,
      'eventId': instance.eventId,
      'eventName': instance.eventName,
      'dateAdded': const TimestampJsonConverter().toJson(instance.dateAdded),
      'userPictureUrl': instance.userPictureUrl,
    };
