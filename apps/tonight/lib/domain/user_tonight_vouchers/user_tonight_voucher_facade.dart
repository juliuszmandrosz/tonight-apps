import 'package:dartz/dartz.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_failure.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_entity.dart';

abstract class UserTonightVoucherFacade {
  Future<Either<TonightVoucherFailure, Unit>> redeemTonightVoucher(
    String eventId,
  );

  Future<Either<TonightVoucherFailure, List<UserTonightVoucher>>>
      fetchUserVouchers({
    int pageSize = 20,
    String? lastVoucherId,
  });
}
