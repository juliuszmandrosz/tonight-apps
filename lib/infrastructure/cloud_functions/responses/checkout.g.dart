// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Checkout _$$_CheckoutFromJson(Map<String, dynamic> json) => _$_Checkout(
      sessionId: json['sessionId'] as String,
      url: json['url'] as String,
      paymentIntentId: json['paymentIntentId'] as String,
    );

Map<String, dynamic> _$$_CheckoutToJson(_$_Checkout instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'url': instance.url,
      'paymentIntentId': instance.paymentIntentId,
    };
