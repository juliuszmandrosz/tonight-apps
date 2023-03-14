import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight_partners/domain/discounts/partner_discount_entity.dart';

part 'partner_discount_dto.freezed.dart';
part 'partner_discount_dto.g.dart';

@freezed
class PartnerDiscountDto with _$PartnerDiscountDto {
  const PartnerDiscountDto._();

  @JsonSerializable()
  const factory PartnerDiscountDto({
    @JsonKey(ignore: true) String? id,
    required int requiredExclusiveEventsSales,
    required int percentageOff,
  }) = _PartnerDiscountDto;

  factory PartnerDiscountDto.fromDomain(PartnerDiscount discount) {
    return PartnerDiscountDto(
      id: discount.id,
      requiredExclusiveEventsSales: discount.requiredExclusiveEventsSales,
      percentageOff: discount.percentageOff,
    );
  }

  factory PartnerDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$PartnerDiscountDtoFromJson(json);

  factory PartnerDiscountDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return PartnerDiscountDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  PartnerDiscount toDomain() {
    return PartnerDiscount(
      id: id,
      requiredExclusiveEventsSales: requiredExclusiveEventsSales,
      percentageOff: percentageOff,
    );
  }
}
