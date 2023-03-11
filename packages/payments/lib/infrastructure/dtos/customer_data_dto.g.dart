// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDataDto _$$_CustomerDataDtoFromJson(Map<String, dynamic> json) =>
    _$_CustomerDataDto(
      paymentMethod: json['paymentMethod'] as String?,
      name: json['name'] as String?,
      vatNumber: json['vatNumber'] as String?,
    );

Map<String, dynamic> _$$_CustomerDataDtoToJson(_$_CustomerDataDto instance) =>
    <String, dynamic>{
      'paymentMethod': instance.paymentMethod,
      'name': instance.name,
      'vatNumber': instance.vatNumber,
    };
