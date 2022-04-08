// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClubReviewDto _$$_ClubReviewDtoFromJson(Map<String, dynamic> json) =>
    _$_ClubReviewDto(
      userOpinion: json['userOpinion'] as String,
      userRate: (json['userRate'] as num).toDouble(),
      userId: json['userId'] as String,
      username: json['username'] as String,
      dateTime:
          const TimestampJsonConverter().fromJson(json['dateTime'] as int),
    );

Map<String, dynamic> _$$_ClubReviewDtoToJson(_$_ClubReviewDto instance) =>
    <String, dynamic>{
      'userOpinion': instance.userOpinion,
      'userRate': instance.userRate,
      'userId': instance.userId,
      'username': instance.username,
      'dateTime': const TimestampJsonConverter().toJson(instance.dateTime),
    };
