// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticipantDtoImpl _$$ParticipantDtoImplFromJson(Map<String, dynamic> json) =>
    _$ParticipantDtoImpl(
      userId: json['userId'] as String,
      username: json['username'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String?,
    );

Map<String, dynamic> _$$ParticipantDtoImplToJson(
        _$ParticipantDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'profilePictureUrl': instance.profilePictureUrl,
    };
