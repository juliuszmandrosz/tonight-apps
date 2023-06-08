import 'package:equatable/equatable.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_entity.dart';

class UserTonightVoucher extends Equatable {
  final String eventId;
  final String venueId;
  final String eventName;
  final String venueName;
  final String voucherName;
  final DateTime validUntil;
  final DateTime createdAt;
  final bool isRewardRedeemed;

  UserTonightVoucher({
    DateTime? createdAt,
    required this.eventId,
    required this.venueId,
    required this.eventName,
    required this.venueName,
    required this.voucherName,
    required this.validUntil,
    this.isRewardRedeemed = false,
  }) : createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        eventId,
        venueId,
        eventName,
        venueName,
        voucherName,
        validUntil,
        createdAt,
        isRewardRedeemed,
      ];

  factory UserTonightVoucher.fromTonightVoucher(TonightVoucher voucher) {
    return UserTonightVoucher(
      eventId: voucher.eventId,
      venueId: voucher.venueId,
      eventName: voucher.eventName,
      venueName: voucher.venueName,
      voucherName: voucher.voucherName,
      validUntil: DateTime.now().add(const Duration(minutes: 10)),
    );
  }

  bool get isExpired {
    if (validUntil.isBefore(DateTime.now())) return true;
    if (isRewardRedeemed) return true;
    return false;
  }
}
