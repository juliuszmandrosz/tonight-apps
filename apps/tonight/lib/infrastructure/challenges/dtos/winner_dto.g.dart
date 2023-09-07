// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'winner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WinnerDto _$$_WinnerDtoFromJson(Map<String, dynamic> json) => _$_WinnerDto(
      id: json['id'] as String,
      username: json['username'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
      place: json['place'] as int,
      reward: json['reward'] as int,
      likesCount: json['likesCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WinnerDtoToJson(_$_WinnerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profilePictureUrl': instance.profilePictureUrl,
      'place': instance.place,
      'reward': instance.reward,
      'likesCount': instance.likesCount,
    };
