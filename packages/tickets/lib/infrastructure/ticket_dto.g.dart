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
      eventStartDateTime: const FirebaseTimestampJsonConverter()
          .fromJson(json['eventStartDateTime'] as Timestamp),
      eventEndDateTime: const FirebaseTimestampJsonConverter()
          .fromJson(json['eventEndDateTime'] as Timestamp),
      price: json['price'] as int,
      currency: json['currency'] as String,
      ticketPaymentId: json['ticketPaymentId'] as String,
      isExpired: json['isExpired'] as bool? ?? false,
      isEventCanceled: json['isEventCanceled'] as bool? ?? false,
      isReturnable: json['isReturnable'] as bool? ?? false,
      isReturned: json['isReturned'] as bool? ?? false,
      reviewId: json['reviewId'] as String? ?? '',
      quantity: json['quantity'] as int? ?? 1,
      isActivated: json['isActivated'] as bool? ?? false,
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
      usedAt: const FirebaseNullableTimestampJsonConverter()
          .fromJson(json['usedAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_TicketDtoToJson(_$_TicketDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'clubId': instance.clubId,
      'clubName': instance.clubName,
      'eventName': instance.eventName,
      'eventStartDateTime': const FirebaseTimestampJsonConverter()
          .toJson(instance.eventStartDateTime),
      'eventEndDateTime': const FirebaseTimestampJsonConverter()
          .toJson(instance.eventEndDateTime),
      'price': instance.price,
      'currency': instance.currency,
      'ticketPaymentId': instance.ticketPaymentId,
      'isExpired': instance.isExpired,
      'isEventCanceled': instance.isEventCanceled,
      'isReturnable': instance.isReturnable,
      'isReturned': instance.isReturned,
      'reviewId': instance.reviewId,
      'quantity': instance.quantity,
      'isActivated': instance.isActivated,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
      'usedAt': const FirebaseNullableTimestampJsonConverter()
          .toJson(instance.usedAt),
    };
