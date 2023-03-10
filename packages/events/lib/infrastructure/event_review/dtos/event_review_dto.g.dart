// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventReviewDto _$$_EventReviewDtoFromJson(Map<String, dynamic> json) =>
    _$_EventReviewDto(
      reviewQuantity: json['reviewQuantity'] as int? ?? 0,
      reviewAvg: (json['reviewAvg'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_EventReviewDtoToJson(_$_EventReviewDto instance) =>
    <String, dynamic>{
      'reviewQuantity': instance.reviewQuantity,
      'reviewAvg': instance.reviewAvg,
    };
