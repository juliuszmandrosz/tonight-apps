// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selector_access_code_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelectorAccessCodeDto _$$_SelectorAccessCodeDtoFromJson(
        Map<String, dynamic> json) =>
    _$_SelectorAccessCodeDto(
      partnerId: json['partnerId'] as String,
      expirationDateTime: const TimestampJsonConverter()
          .fromJson(json['expirationDateTime'] as int),
    );

Map<String, dynamic> _$$_SelectorAccessCodeDtoToJson(
        _$_SelectorAccessCodeDto instance) =>
    <String, dynamic>{
      'partnerId': instance.partnerId,
      'expirationDateTime':
          const TimestampJsonConverter().toJson(instance.expirationDateTime),
    };
