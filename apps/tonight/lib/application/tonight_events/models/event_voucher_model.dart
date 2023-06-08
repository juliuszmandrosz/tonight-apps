import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_entity.dart';

part 'event_voucher_model.freezed.dart';

@freezed
class EventVoucher with _$EventVoucher {
  const EventVoucher._();

  const factory EventVoucher({
    required String id,
    required String venueId,
    required String eventName,
    required String venueName,
    required String voucherName,
    required DateTime validUntil,
    required List<String> usedBy,
    required int poolLimit,
    required bool isExpired,
  }) = _EventVoucher;

  factory EventVoucher.fromDomain({
    required TonightVoucher voucher,
    required String currentUserId,
  }) {
    return EventVoucher(
      id: voucher.eventId,
      venueId: voucher.venueId,
      eventName: voucher.eventName,
      venueName: voucher.venueName,
      voucherName: voucher.voucherName,
      validUntil: voucher.validUntil,
      usedBy: voucher.usedBy,
      poolLimit: voucher.poolLimit,
      isExpired: voucher.checkIfExpired(currentUserId),
    );
  }

  TonightVoucher toDomain() {
    return TonightVoucher(
      eventId: id,
      venueId: venueId,
      eventName: eventName,
      venueName: venueName,
      voucherName: voucherName,
      validUntil: validUntil,
      usedBy: usedBy,
      poolLimit: poolLimit,
    );
  }
}
