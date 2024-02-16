// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tonight_voucher_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TonightVoucherDtoImpl _$$TonightVoucherDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TonightVoucherDtoImpl(
      venueId: json['venueId'] as String,
      venueName: json['venueName'] as String,
      eventName: json['eventName'] as String,
      voucherName: json['voucherName'] as String,
      poolLimit: json['poolLimit'] as int,
      validUntil: const FirebaseTimestampJsonConverter()
          .fromJson(json['validUntil'] as Timestamp),
      usedBy: (json['usedBy'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TonightVoucherDtoImplToJson(
        _$TonightVoucherDtoImpl instance) =>
    <String, dynamic>{
      'venueId': instance.venueId,
      'venueName': instance.venueName,
      'eventName': instance.eventName,
      'voucherName': instance.voucherName,
      'poolLimit': instance.poolLimit,
      'validUntil':
          const FirebaseTimestampJsonConverter().toJson(instance.validUntil),
      'usedBy': instance.usedBy,
    };
