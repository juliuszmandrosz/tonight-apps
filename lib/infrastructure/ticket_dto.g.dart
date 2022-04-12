// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketDto _$$_TicketDtoFromJson(Map<String, dynamic> json) => _$_TicketDto(
      clubName: json['clubName'] as String,
      eventName: json['eventName'] as String,
      eventId: json['eventId'] as String,
      eventDateTime: const FirebaseTimestampJsonConverter()
          .fromJson(json['eventDateTime'] as Timestamp),
      price: json['price'] as int,
      currency: json['currency'] as String,
      isVip: json['isVip'] as bool,
      ticketPaymentId: json['ticketPaymentId'] as String,
      isExpired: json['isExpired'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TicketDtoToJson(_$_TicketDto instance) =>
    <String, dynamic>{
      'clubName': instance.clubName,
      'eventName': instance.eventName,
      'eventId': instance.eventId,
      'eventDateTime':
          const FirebaseTimestampJsonConverter().toJson(instance.eventDateTime),
      'price': instance.price,
      'currency': instance.currency,
      'isVip': instance.isVip,
      'ticketPaymentId': instance.ticketPaymentId,
      'isExpired': instance.isExpired,
    };
