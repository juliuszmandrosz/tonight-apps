import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_entity.dart';

part 'user_tonight_voucher_dto.freezed.dart';
part 'user_tonight_voucher_dto.g.dart';

@freezed
class UserTonightVoucherDto with _$UserTonightVoucherDto {
  const UserTonightVoucherDto._();

  @JsonSerializable()
  const factory UserTonightVoucherDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? eventId,
    required String venueId,
    required String eventName,
    required String venueName,
    required String voucherName,
    required DateTime validUntil,
    required DateTime createdAt,
    @Default(false) bool isRewardRedeemed,
  }) = _UserTonightVoucherDto;

  factory UserTonightVoucherDto.fromJson(Map<String, dynamic> json) =>
      _$UserTonightVoucherDtoFromJson(json);

  factory UserTonightVoucherDto.fromFirebase(
    DocumentSnapshot documentSnapshot,
  ) {
    return UserTonightVoucherDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(eventId: documentSnapshot.id);
  }

  factory UserTonightVoucherDto.fromDomain(
    UserTonightVoucher userTonightVoucher,
  ) {
    return UserTonightVoucherDto(
      eventId: userTonightVoucher.eventId,
      venueId: userTonightVoucher.venueId,
      eventName: userTonightVoucher.eventName,
      venueName: userTonightVoucher.venueName,
      voucherName: userTonightVoucher.voucherName,
      validUntil: userTonightVoucher.validUntil,
      createdAt: userTonightVoucher.createdAt,
      isRewardRedeemed: userTonightVoucher.isRewardRedeemed,
    );
  }

  UserTonightVoucher toDomain() {
    return UserTonightVoucher(
      eventId: eventId!,
      venueId: venueId,
      eventName: eventName,
      venueName: venueName,
      voucherName: voucherName,
      validUntil: validUntil,
      createdAt: createdAt,
      isRewardRedeemed: isRewardRedeemed,
    );
  }
}
