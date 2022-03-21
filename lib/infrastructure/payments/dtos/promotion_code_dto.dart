import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/payments/promotion_code_entity.dart';
import 'package:raver_common/raver_common.dart';

part 'promotion_code_dto.freezed.dart';
part 'promotion_code_dto.g.dart';

@freezed
class PromotionCodeDto with _$PromotionCodeDto {
  const PromotionCodeDto._();

  const factory PromotionCodeDto({
    @JsonKey(ignore: true) String? code,
    required bool isValid,
    required int amountOff,
    required String currency,
    int? maxRedemptions,
    @FirebaseNullableTimestampJsonConverter() DateTime? expirationDateTime,
    @Default(0) int timesRedeemed,
  }) = _PromotionCodeDto;

  factory PromotionCodeDto.fromDomain(PromotionCode promotionCode) {
    return PromotionCodeDto(
      code: promotionCode.code,
      isValid: promotionCode.isValid,
      amountOff: promotionCode.amountOff,
      currency: promotionCode.currency,
      expirationDateTime: promotionCode.expirationDateTime,
      maxRedemptions: promotionCode.maxRedemptions,
      timesRedeemed: promotionCode.timesRedeemed,
    );
  }

  factory PromotionCodeDto.fromJson(Map<String, dynamic> json) =>
      _$PromotionCodeDtoFromJson(json);

  factory PromotionCodeDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return PromotionCodeDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(code: documentSnapshot.id);
  }

  PromotionCode toDomain() {
    return PromotionCode(
      code: code,
      isValid: isValid,
      amountOff: amountOff,
      currency: currency,
      expirationDateTime: expirationDateTime,
      maxRedemptions: maxRedemptions,
      timesRedeemed: timesRedeemed,
    );
  }
}
