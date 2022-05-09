// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_costs_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventCostsDto _$$_EventCostsDtoFromJson(Map<String, dynamic> json) =>
    _$_EventCostsDto(
      currency: json['currency'] as String,
      paymentProcessorFeeBalance:
          (json['paymentProcessorFeeBalance'] as num?)?.toDouble() ?? 0,
      eventPostponeBalance:
          (json['eventPostponeBalance'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_EventCostsDtoToJson(_$_EventCostsDto instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'paymentProcessorFeeBalance': instance.paymentProcessorFeeBalance,
      'eventPostponeBalance': instance.eventPostponeBalance,
    };
