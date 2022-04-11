// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_sales_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketSalesDto _$$_TicketSalesDtoFromJson(Map<String, dynamic> json) =>
    _$_TicketSalesDto(
      currency: json['currency'] as String,
      totalRevenue: (json['totalRevenue'] as num?)?.toDouble() ?? 0,
      clubIncome: (json['clubIncome'] as num?)?.toDouble() ?? 0,
      ticketsSold: json['ticketsSold'] as int? ?? 0,
      vipsSold: json['vipsSold'] as int? ?? 0,
    );

Map<String, dynamic> _$$_TicketSalesDtoToJson(_$_TicketSalesDto instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'totalRevenue': instance.totalRevenue,
      'clubIncome': instance.clubIncome,
      'ticketsSold': instance.ticketsSold,
      'vipsSold': instance.vipsSold,
    };
