// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_sales_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClubSalesDto _$$_ClubSalesDtoFromJson(Map<String, dynamic> json) =>
    _$_ClubSalesDto(
      currency: json['currency'] as String,
      totalRevenue: (json['totalRevenue'] as num?)?.toDouble() ?? 0,
      exclusiveEventsRevenue:
          (json['exclusiveEventsRevenue'] as num?)?.toDouble() ?? 0,
      ticketsSold: json['ticketsSold'] as int? ?? 0,
      vipsSold: json['vipsSold'] as int? ?? 0,
      exclusiveTicketsSold: json['exclusiveTicketsSold'] as int? ?? 0,
      exclusiveVipsSold: json['exclusiveVipsSold'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ClubSalesDtoToJson(_$_ClubSalesDto instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'totalRevenue': instance.totalRevenue,
      'exclusiveEventsRevenue': instance.exclusiveEventsRevenue,
      'ticketsSold': instance.ticketsSold,
      'vipsSold': instance.vipsSold,
      'exclusiveTicketsSold': instance.exclusiveTicketsSold,
      'exclusiveVipsSold': instance.exclusiveVipsSold,
    };
