// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_code_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionCodeDto _$$_PromotionCodeDtoFromJson(Map<String, dynamic> json) =>
    _$_PromotionCodeDto(
      isValid: json['isValid'] as bool,
      amountOff: json['amountOff'] as int,
      currency: json['currency'] as String,
      maxRedemptions: json['maxRedemptions'] as int?,
      expirationDateTime: const FirebaseNullableTimestampJsonConverter()
          .fromJson(json['expirationDateTime'] as Timestamp?),
      timesRedeemed: json['timesRedeemed'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PromotionCodeDtoToJson(_$_PromotionCodeDto instance) =>
    <String, dynamic>{
      'isValid': instance.isValid,
      'amountOff': instance.amountOff,
      'currency': instance.currency,
      'maxRedemptions': instance.maxRedemptions,
      'expirationDateTime': const FirebaseNullableTimestampJsonConverter()
          .toJson(instance.expirationDateTime),
      'timesRedeemed': instance.timesRedeemed,
    };
