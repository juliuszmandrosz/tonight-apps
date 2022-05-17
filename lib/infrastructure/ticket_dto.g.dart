// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketDto _$$_TicketDtoFromJson(Map<String, dynamic> json) => _$_TicketDto(
      eventId: json['eventId'] as String,
      clubId: json['clubId'] as String,
      clubName: json['clubName'] as String,
      eventName: json['eventName'] as String,
      eventDateTime: const FirebaseTimestampJsonConverter()
          .fromJson(json['eventDateTime'] as Timestamp),
      price: json['price'] as int,
      currency: json['currency'] as String,
      isVip: json['isVip'] as bool,
      ticketPaymentId: json['ticketPaymentId'] as String,
      vipPaymentId: json['vipPaymentId'] as String?,
      isExpired: json['isExpired'] as bool? ?? false,
      isEventCanceled: json['isEventCanceled'] as bool? ?? false,
      isReturnable: json['isReturnable'] as bool? ?? false,
      isReturned: json['isReturned'] as bool? ?? false,
      reviewId: json['reviewId'] as String? ?? '',
    );

Map<String, dynamic> _$$_TicketDtoToJson(_$_TicketDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'clubId': instance.clubId,
      'clubName': instance.clubName,
      'eventName': instance.eventName,
      'eventDateTime':
          const FirebaseTimestampJsonConverter().toJson(instance.eventDateTime),
      'price': instance.price,
      'currency': instance.currency,
      'isVip': instance.isVip,
      'ticketPaymentId': instance.ticketPaymentId,
      'vipPaymentId': instance.vipPaymentId,
      'isExpired': instance.isExpired,
      'isEventCanceled': instance.isEventCanceled,
      'isReturnable': instance.isReturnable,
      'isReturned': instance.isReturned,
      'reviewId': instance.reviewId,
    };
