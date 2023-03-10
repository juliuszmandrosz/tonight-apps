// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_fees_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventFeesDto _$$_EventFeesDtoFromJson(Map<String, dynamic> json) =>
    _$_EventFeesDto(
      normal: (json['normal'] as num).toDouble(),
      exclusive: (json['exclusive'] as num).toDouble(),
    );

Map<String, dynamic> _$$_EventFeesDtoToJson(_$_EventFeesDto instance) =>
    <String, dynamic>{
      'normal': instance.normal,
      'exclusive': instance.exclusive,
    };
