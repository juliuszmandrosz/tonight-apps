import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';

part 'marketplace_discount_dto.freezed.dart';
part 'marketplace_discount_dto.g.dart';

@freezed
class MarketplaceDiscountDto with _$MarketplaceDiscountDto {
  const MarketplaceDiscountDto._();

  const factory MarketplaceDiscountDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required String name,
    required String description,
    required String imageUrl,
    required String marketplaceUrl,

    /// Price in raver coins
    required int price,
  }) = _MarketplaceDiscountDto;

  factory MarketplaceDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceDiscountDtoFromJson(json);

  factory MarketplaceDiscountDto.fromFirebase(
    DocumentSnapshot documentSnapshot,
  ) {
    return MarketplaceDiscountDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory MarketplaceDiscountDto.fromDomain(MarketplaceDiscount discount) {
    return MarketplaceDiscountDto(
      id: discount.id,
      name: discount.name,
      description: discount.description,
      imageUrl: discount.imageUrl,
      marketplaceUrl: discount.marketplaceUrl,
      price: discount.price,
    );
  }

  MarketplaceDiscount toDomain() => MarketplaceDiscount(
        id: id,
        name: name,
        description: description,
        imageUrl: imageUrl,
        marketplaceUrl: marketplaceUrl,
        price: price,
      );
}
