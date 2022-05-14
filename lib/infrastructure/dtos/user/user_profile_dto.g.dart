// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileDto _$$_UserProfileDtoFromJson(Map<String, dynamic> json) =>
    _$_UserProfileDto(
      username: json['username'] as String,
      email: json['email'] as String,
      favoriteClubIds: (json['favoriteClubIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      favoriteEventIds: (json['favoriteEventIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      attendance: (json['attendance'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const {},
      ticketCount: json['ticketCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_UserProfileDtoToJson(_$_UserProfileDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'favoriteClubIds': instance.favoriteClubIds,
      'favoriteEventIds': instance.favoriteEventIds,
      'attendance': instance.attendance,
      'ticketCount': instance.ticketCount,
    };
