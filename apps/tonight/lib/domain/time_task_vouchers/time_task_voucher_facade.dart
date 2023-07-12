import 'package:dartz/dartz.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_entity.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_failure.dart';

abstract class TimeTaskVoucherFacade {
  Stream<Either<TimeTaskVoucherFailure, TimeTaskVoucher>>
      listenVoucherByTimeTaskId(String timeTaskId);

  Future<Either<TimeTaskVoucherFailure, Unit>> activateVoucher(
    String timeTaskId,
  );

  Future<Either<TimeTaskVoucherFailure, Unit>> acquireReward({
    required String wallPhotoId,
    required String timeTaskId,
  });

  Future<Either<TimeTaskVoucherFailure, List<TimeTaskVoucher>>>
      fetchUserVouchers({
    int pageSize = 20,
    String? lastVoucherId,
  });
}
