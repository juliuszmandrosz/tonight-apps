// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParticipantDto _$$_ParticipantDtoFromJson(Map<String, dynamic> json) =>
    _$_ParticipantDto(
      userId: json['userId'] as String,
      username: json['username'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String?,
    );

Map<String, dynamic> _$$_ParticipantDtoToJson(_$_ParticipantDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'profilePictureUrl': instance.profilePictureUrl,
    };
