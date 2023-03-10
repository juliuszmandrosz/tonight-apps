// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_params_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyParamsDto _$$_CurrencyParamsDtoFromJson(Map<String, dynamic> json) =>
    _$_CurrencyParamsDto(
      minTicketPrice: json['minTicketPrice'] as int,
      maxTicketPrice: json['maxTicketPrice'] as int,
      minServiceFeeAmount: (json['minServiceFeeAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CurrencyParamsDtoToJson(
        _$_CurrencyParamsDto instance) =>
    <String, dynamic>{
      'minTicketPrice': instance.minTicketPrice,
      'maxTicketPrice': instance.maxTicketPrice,
      'minServiceFeeAmount': instance.minServiceFeeAmount,
    };
