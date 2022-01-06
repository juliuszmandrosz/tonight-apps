// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_overview_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClubOverviewDto _$$_ClubOverviewDtoFromJson(Map<String, dynamic> json) =>
    _$_ClubOverviewDto(
      clubName: json['clubName'] as String,
      clubImageUrl: json['clubImageUrl'] as String,
      reviewCount: json['reviewCount'] as int,
      reviewAvg: (json['reviewAvg'] as num).toDouble(),
      addressString: json['addressString'] as String,
    );

Map<String, dynamic> _$$_ClubOverviewDtoToJson(_$_ClubOverviewDto instance) =>
    <String, dynamic>{
      'clubName': instance.clubName,
      'clubImageUrl': instance.clubImageUrl,
      'reviewCount': instance.reviewCount,
      'reviewAvg': instance.reviewAvg,
      'addressString': instance.addressString,
    };
