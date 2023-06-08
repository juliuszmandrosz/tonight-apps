import 'package:dartz/dartz.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_entity.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_failure.dart';

abstract class TonightVoucherFacade {
  Future<Either<TonightVoucherFailure, Option<TonightVoucher>>> getVoucher(
    String eventId,
  );

  Future<Either<TonightVoucherFailure, Unit>> useVoucher(String eventId);
}
