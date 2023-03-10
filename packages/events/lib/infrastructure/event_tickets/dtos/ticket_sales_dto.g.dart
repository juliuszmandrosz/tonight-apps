// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_sales_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketSalesDto _$$_TicketSalesDtoFromJson(Map<String, dynamic> json) =>
    _$_TicketSalesDto(
      currency: json['currency'] as String,
      eventFee: (json['eventFee'] as num).toDouble(),
      totalRevenue: (json['totalRevenue'] as num?)?.toDouble() ?? 0,
      clubIncome: (json['clubIncome'] as num?)?.toDouble() ?? 0,
      ticketsSold: json['ticketsSold'] as int? ?? 0,
      vipsSold: json['vipsSold'] as int? ?? 0,
      isExclusiveEvent: json['isExclusiveEvent'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TicketSalesDtoToJson(_$_TicketSalesDto instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'eventFee': instance.eventFee,
      'totalRevenue': instance.totalRevenue,
      'clubIncome': instance.clubIncome,
      'ticketsSold': instance.ticketsSold,
      'vipsSold': instance.vipsSold,
      'isExclusiveEvent': instance.isExclusiveEvent,
    };
