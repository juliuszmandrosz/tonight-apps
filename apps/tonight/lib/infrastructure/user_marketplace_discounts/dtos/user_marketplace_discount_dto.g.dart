// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_marketplace_discount_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserMarketplaceDiscountDtoImpl _$$UserMarketplaceDiscountDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserMarketplaceDiscountDtoImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      marketplaceUrl: json['marketplaceUrl'] as String,
      code: json['code'] as String,
      redeemedAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['redeemedAt'] as Timestamp),
    );

Map<String, dynamic> _$$UserMarketplaceDiscountDtoImplToJson(
        _$UserMarketplaceDiscountDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'marketplaceUrl': instance.marketplaceUrl,
      'code': instance.code,
      'redeemedAt':
          const FirebaseTimestampJsonConverter().toJson(instance.redeemedAt),
    };
