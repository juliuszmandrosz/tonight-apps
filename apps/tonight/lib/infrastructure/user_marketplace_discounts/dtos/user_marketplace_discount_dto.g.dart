// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_marketplace_discount_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserMarketplaceDiscountDto _$$_UserMarketplaceDiscountDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UserMarketplaceDiscountDto(
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      marketplaceUrl: json['marketplaceUrl'] as String,
      code: json['code'] as String,
      redeemedAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['redeemedAt'] as Timestamp),
    );

Map<String, dynamic> _$$_UserMarketplaceDiscountDtoToJson(
        _$_UserMarketplaceDiscountDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'marketplaceUrl': instance.marketplaceUrl,
      'code': instance.code,
      'redeemedAt':
          const FirebaseTimestampJsonConverter().toJson(instance.redeemedAt),
    };
