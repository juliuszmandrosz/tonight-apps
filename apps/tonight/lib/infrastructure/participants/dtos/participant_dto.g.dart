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
      stepCount: json['stepCount'] as int? ?? 0,
      initialStepCount: json['initialStepCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$ParticipantDtoImplToJson(
        _$ParticipantDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'profilePictureUrl': instance.profilePictureUrl,
      'stepCount': instance.stepCount,
      'initialStepCount': instance.initialStepCount,
    };
