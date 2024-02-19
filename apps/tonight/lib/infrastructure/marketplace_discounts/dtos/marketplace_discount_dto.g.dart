// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace_discount_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketplaceDiscountDtoImpl _$$MarketplaceDiscountDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketplaceDiscountDtoImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      marketplaceUrl: json['marketplaceUrl'] as String,
      price: json['price'] as int,
    );

Map<String, dynamic> _$$MarketplaceDiscountDtoImplToJson(
        _$MarketplaceDiscountDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'marketplaceUrl': instance.marketplaceUrl,
      'price': instance.price,
    };
