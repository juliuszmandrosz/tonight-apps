// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_photo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WallPhotoDto _$$_WallPhotoDtoFromJson(Map<String, dynamic> json) =>
    _$_WallPhotoDto(
      photoUrl: json['photoUrl'] as String,
      clubId: json['clubId'] as String,
      clubName: json['clubName'] as String,
      eventId: json['eventId'] as String,
      eventName: json['eventName'] as String,
      userId: json['userId'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_WallPhotoDtoToJson(_$_WallPhotoDto instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'clubId': instance.clubId,
      'clubName': instance.clubName,
      'eventId': instance.eventId,
      'eventName': instance.eventName,
      'userId': instance.userId,
      'username': instance.username,
    };
