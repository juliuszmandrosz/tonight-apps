// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_tickets_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventTicketsDto _$$_EventTicketsDtoFromJson(Map<String, dynamic> json) =>
    _$_EventTicketsDto(
      ticketPools: (json['ticketPools'] as List<dynamic>)
          .map((e) => TicketPoolDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      ticketSales:
          TicketSalesDto.fromJson(json['ticketSales'] as Map<String, dynamic>),
      ticketQuantity: json['ticketQuantity'] as int,
      isSoldOut: json['isSoldOut'] as bool? ?? false,
      isSaleActive: json['isSaleActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_EventTicketsDtoToJson(_$_EventTicketsDto instance) =>
    <String, dynamic>{
      'ticketPools': instance.ticketPools.map((e) => e.toJson()).toList(),
      'ticketSales': instance.ticketSales.toJson(),
      'ticketQuantity': instance.ticketQuantity,
      'isSoldOut': instance.isSoldOut,
      'isSaleActive': instance.isSaleActive,
    };
