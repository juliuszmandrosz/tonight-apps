// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDtoImpl _$$MessageDtoImplFromJson(Map<String, dynamic> json) =>
    _$MessageDtoImpl(
      userId: json['userId'] as String,
      username: json['username'] as String,
      text: json['text'] as String,
      userPictureUrl: json['userPictureUrl'] as String?,
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
      isJoinedInfo: json['isJoinedInfo'] ?? false,
      isLeftInfo: json['isLeftInfo'] ?? false,
      isUserDeleted: json['isUserDeleted'] ?? false,
    );

Map<String, dynamic> _$$MessageDtoImplToJson(_$MessageDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'text': instance.text,
      'userPictureUrl': instance.userPictureUrl,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
      'isJoinedInfo': instance.isJoinedInfo,
      'isLeftInfo': instance.isLeftInfo,
      'isUserDeleted': instance.isUserDeleted,
    };
