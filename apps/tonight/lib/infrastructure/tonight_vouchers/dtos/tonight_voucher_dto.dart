import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_entity.dart';

part 'tonight_voucher_dto.freezed.dart';
part 'tonight_voucher_dto.g.dart';

@freezed
class TonightVoucherDto with _$TonightVoucherDto {
  const TonightVoucherDto._();

  @JsonSerializable()
  const factory TonightVoucherDto({
    @JsonKey(includeToJson: false, includeFromJson: false) String? eventId,
    required String venueId,
    required String venueName,
    required String eventName,
    required String voucherName,
    required int poolLimit,
    @FirebaseTimestampJsonConverter() required DateTime validUntil,

    /// List of user ids
    @Default([]) List<String> usedBy,
  }) = _TonightVoucherDto;

  factory TonightVoucherDto.fromJson(Map<String, dynamic> json) =>
      _$TonightVoucherDtoFromJson(json);

  factory TonightVoucherDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return TonightVoucherDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(eventId: documentSnapshot.id);
  }

  factory TonightVoucherDto.fromDomain(TonightVoucher tonightVoucher) {
    return TonightVoucherDto(
      venueId: tonightVoucher.venueId,
      eventId: tonightVoucher.eventId,
      venueName: tonightVoucher.venueName,
      eventName: tonightVoucher.eventName,
      voucherName: tonightVoucher.voucherName,
      validUntil: tonightVoucher.validUntil,
      usedBy: tonightVoucher.usedBy,
      poolLimit: tonightVoucher.poolLimit,
    );
  }

  TonightVoucher toDomain() {
    return TonightVoucher(
      eventId: eventId!,
      venueId: venueId,
      venueName: venueName,
      eventName: eventName,
      voucherName: voucherName,
      validUntil: validUntil,
      usedBy: usedBy,
      poolLimit: poolLimit,
    );
  }
}
