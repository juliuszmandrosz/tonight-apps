// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomDto _$$_RoomDtoFromJson(Map<String, dynamic> json) => _$_RoomDto(
      roomName: json['roomName'] as String,
      roomPhotoUrl: json['roomPhotoUrl'] as String,
      lastMessageId: json['lastMessageId'] as String?,
      lastMessageText: json['lastMessageText'] as String?,
      lastMessageUsername: json['lastMessageUsername'] as String?,
      lastMessageCreatedAt: const FirebaseNullableTimestampJsonConverter()
          .fromJson(json['lastMessageCreatedAt'] as Timestamp?),
      isLastMessageLeftInfo: json['isLastMessageLeftInfo'] as bool? ?? false,
      isLastMessageJoinedInfo:
          json['isLastMessageJoinedInfo'] as bool? ?? false,
      participantIds: (json['participantIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RoomDtoToJson(_$_RoomDto instance) =>
    <String, dynamic>{
      'roomName': instance.roomName,
      'roomPhotoUrl': instance.roomPhotoUrl,
      'lastMessageId': instance.lastMessageId,
      'lastMessageText': instance.lastMessageText,
      'lastMessageUsername': instance.lastMessageUsername,
      'lastMessageCreatedAt': const FirebaseNullableTimestampJsonConverter()
          .toJson(instance.lastMessageCreatedAt),
      'isLastMessageLeftInfo': instance.isLastMessageLeftInfo,
      'isLastMessageJoinedInfo': instance.isLastMessageJoinedInfo,
      'participantIds': instance.participantIds,
    };
