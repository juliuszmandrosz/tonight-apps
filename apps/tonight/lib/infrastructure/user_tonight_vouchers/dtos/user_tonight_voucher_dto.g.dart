// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tonight_voucher_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserTonightVoucherDto _$$_UserTonightVoucherDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UserTonightVoucherDto(
      venueId: json['venueId'] as String,
      eventName: json['eventName'] as String,
      venueName: json['venueName'] as String,
      voucherName: json['voucherName'] as String,
      validUntil: DateTime.parse(json['validUntil'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isRewardRedeemed: json['isRewardRedeemed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserTonightVoucherDtoToJson(
        _$_UserTonightVoucherDto instance) =>
    <String, dynamic>{
      'venueId': instance.venueId,
      'eventName': instance.eventName,
      'venueName': instance.venueName,
      'voucherName': instance.voucherName,
      'validUntil': instance.validUntil.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'isRewardRedeemed': instance.isRewardRedeemed,
    };
