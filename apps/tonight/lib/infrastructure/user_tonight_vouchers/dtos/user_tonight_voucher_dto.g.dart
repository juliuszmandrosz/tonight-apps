// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tonight_voucher_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTonightVoucherDtoImpl _$$UserTonightVoucherDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserTonightVoucherDtoImpl(
      venueId: json['venueId'] as String,
      eventName: json['eventName'] as String,
      venueName: json['venueName'] as String,
      voucherName: json['voucherName'] as String,
      validUntil: DateTime.parse(json['validUntil'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isRewardRedeemed: json['isRewardRedeemed'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserTonightVoucherDtoImplToJson(
        _$UserTonightVoucherDtoImpl instance) =>
    <String, dynamic>{
      'venueId': instance.venueId,
      'eventName': instance.eventName,
      'venueName': instance.venueName,
      'voucherName': instance.voucherName,
      'validUntil': instance.validUntil.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'isRewardRedeemed': instance.isRewardRedeemed,
    };
