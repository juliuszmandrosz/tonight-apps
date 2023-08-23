import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_entity.dart';

part 'user_marketplace_discount_dto.freezed.dart';
part 'user_marketplace_discount_dto.g.dart';

@freezed
class UserMarketplaceDiscountDto with _$UserMarketplaceDiscountDto {
  const UserMarketplaceDiscountDto._();

  const factory UserMarketplaceDiscountDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required String name,
    required String description,
    required String imageUrl,
    required String marketplaceUrl,
    required String code,
    @FirebaseTimestampJsonConverter() required DateTime redeemedAt,
  }) = _UserMarketplaceDiscountDto;

  factory UserMarketplaceDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$UserMarketplaceDiscountDtoFromJson(json);

  factory UserMarketplaceDiscountDto.fromFirebase(
    DocumentSnapshot documentSnapshot,
  ) {
    return UserMarketplaceDiscountDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory UserMarketplaceDiscountDto.fromApi(Response<dynamic> response) {
    const converter = MapFirebaseTimestampJsonConverter();
    final redeemedAt = response.data['redeemedAt'] as Map<String, dynamic>;
    response.data['redeemedAt'] = converter.fromJson(redeemedAt);
    return UserMarketplaceDiscountDto.fromJson(response.data)
        .copyWith(id: response.data['id']);
  }

  factory UserMarketplaceDiscountDto.fromDomain(
    UserMarketplaceDiscount discount,
  ) =>
      UserMarketplaceDiscountDto(
        id: discount.id,
        name: discount.name,
        description: discount.description,
        imageUrl: discount.imageUrl,
        marketplaceUrl: discount.marketplaceUrl,
        code: discount.code,
        redeemedAt: discount.redeemedAt,
      );

  UserMarketplaceDiscount toDomain() => UserMarketplaceDiscount(
        id: id,
        name: name,
        description: description,
        imageUrl: imageUrl,
        marketplaceUrl: marketplaceUrl,
        code: code,
        redeemedAt: redeemedAt,
      );
}
