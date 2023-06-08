import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/vouchers/models/user_tonight_voucher_details_model.dart';
import 'package:tonight/application/vouchers/models/voucher_type.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_entity.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_entity.dart';

part 'voucher_model.freezed.dart';

@freezed
class Voucher with _$Voucher {
  const Voucher._();

  const factory Voucher({
    required String id,
    required String voucherName,
    required String venueName,
    required DateTime validUntil,
    required VoucherType voucherType,
    required Option<UserTonightVoucherDetails> userTonightVoucherDetails,
    required DateTime createdAt,
    @Default(false) bool isActivated,
    @Default(false) bool isExpired,
  }) = _Voucher;

  factory Voucher.fromUserTonightVoucher(UserTonightVoucher voucher) {
    final details = UserTonightVoucherDetails(
      venueId: voucher.venueId,
      eventName: voucher.eventName,
    );
    return Voucher(
      id: voucher.eventId,
      voucherName: voucher.voucherName,
      venueName: voucher.venueName,
      validUntil: voucher.validUntil,
      createdAt: voucher.createdAt,
      voucherType: VoucherType.tonight,
      userTonightVoucherDetails: some(details),
      isActivated: true,
      isExpired: voucher.isExpired,
    );
  }

  factory Voucher.fromTimeTaskVoucher(TimeTaskVoucher voucher) {
    return Voucher(
      id: voucher.timeTaskId,
      validUntil: voucher.validUntil,
      createdAt: voucher.createdAt,
      venueName: voucher.venueName,
      voucherName: voucher.voucherName,
      isActivated: voucher.isActivated,
      voucherType: VoucherType.timeTask,
      userTonightVoucherDetails: none(),
      isExpired: voucher.isExpired,
    );
  }

  UserTonightVoucher toUserTonightVoucher() {
    return UserTonightVoucher(
      eventId: this.id,
      venueId: userTonightVoucherDetails
          .getOrCrash()
          .venueId,
      eventName: userTonightVoucherDetails
          .getOrCrash()
          .eventName,
      voucherName: voucherName,
      venueName: venueName,
      validUntil: validUntil,
      createdAt: createdAt,
      isRewardRedeemed: isExpired,
    );
  }
}
