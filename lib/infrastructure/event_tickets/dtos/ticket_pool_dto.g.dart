// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_pool_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketPoolDto _$$_TicketPoolDtoFromJson(Map<String, dynamic> json) =>
    _$_TicketPoolDto(
      poolNumber: json['poolNumber'] as int,
      ticketQuantity: json['ticketQuantity'] as int,
      ticketPrice: json['ticketPrice'] as int,
      currency: json['currency'] as String,
      ticketsSold: json['ticketsSold'] as int? ?? 0,
      isCurrent: json['isCurrent'] as bool? ?? false,
      isSoldOut: json['isSoldOut'] as bool? ?? false,
      isVipEnabled: json['isVipEnabled'] as bool? ?? false,
      vipPrice: json['vipPrice'] as int?,
    );

Map<String, dynamic> _$$_TicketPoolDtoToJson(_$_TicketPoolDto instance) =>
    <String, dynamic>{
      'poolNumber': instance.poolNumber,
      'ticketQuantity': instance.ticketQuantity,
      'ticketPrice': instance.ticketPrice,
      'currency': instance.currency,
      'ticketsSold': instance.ticketsSold,
      'isCurrent': instance.isCurrent,
      'isSoldOut': instance.isSoldOut,
      'isVipEnabled': instance.isVipEnabled,
      'vipPrice': instance.vipPrice,
    };
