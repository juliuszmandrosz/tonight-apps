// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_discount_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppliedDiscountDto _$$_AppliedDiscountDtoFromJson(
        Map<String, dynamic> json) =>
    _$_AppliedDiscountDto(
      eventId: json['eventId'] as String,
      realizationDateTime: const FirebaseTimestampJsonConverter()
          .fromJson(json['realizationDateTime'] as Timestamp),
    );

Map<String, dynamic> _$$_AppliedDiscountDtoToJson(
        _$_AppliedDiscountDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'realizationDateTime': const FirebaseTimestampJsonConverter()
          .toJson(instance.realizationDateTime),
    };
