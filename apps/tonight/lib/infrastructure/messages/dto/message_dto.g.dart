// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDto _$$_MessageDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageDto(
      roomId: json['roomId'] as String,
      userId: json['userId'] as String,
      username: json['username'] as String,
      text: json['text'] as String,
      userPictureUrl: json['userPictureUrl'] as String?,
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_MessageDtoToJson(_$_MessageDto instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'userId': instance.userId,
      'username': instance.username,
      'text': instance.text,
      'userPictureUrl': instance.userPictureUrl,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
    };
