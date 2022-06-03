import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_partners/domain/discounts/entities/collected_discount_entity.dart';

part 'collected_discount_dto.freezed.dart';

part 'collected_discount_dto.g.dart';

@freezed
class CollectedDiscountDto with _$CollectedDiscountDto {
  const CollectedDiscountDto._();

  @JsonSerializable()
  const factory CollectedDiscountDto({
    @JsonKey(ignore: true) String? id,
    required int percentageOff,
  }) = _CollectedDiscountDto;

  factory CollectedDiscountDto.fromDomain(CollectedDiscount discount) {
    return CollectedDiscountDto(
      id: discount.id,
      percentageOff: discount.percentageOff,
    );
  }

  factory CollectedDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$CollectedDiscountDtoFromJson(json);

  factory CollectedDiscountDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return CollectedDiscountDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  CollectedDiscount toDomain() {
    return CollectedDiscount(
      id: id,
      percentageOff: percentageOff,
    );
  }
}
