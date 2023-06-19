import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:tonight/application/vouchers/aggregator/vouchers_failure.dart';
import 'package:tonight/application/vouchers/models/voucher_model.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_entity.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_facade.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_entity.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_facade.dart';

class VouchersAggregator {
  final TimeTaskVoucherFacade _timeTaskVoucherFacade;
  final UserTonightVoucherFacade _userTonightVoucherFacade;

  VouchersAggregator(
    this._timeTaskVoucherFacade,
    this._userTonightVoucherFacade,
  );

  Future<Either<VouchersFailure, List<Voucher>>> fetchUserVouchers({
    int pageSize = 10,
    String? lastUserTonightVoucherId,
    String? lastTimeTaskVoucherId,
  }) async {
    final results = await Future.wait([
      _userTonightVoucherFacade.fetchUserVouchers(
        pageSize: pageSize,
        lastVoucherId: lastUserTonightVoucherId,
      ),
      _timeTaskVoucherFacade.fetchUserVouchers(
        pageSize: pageSize,
        lastVoucherId: lastTimeTaskVoucherId,
      ),
    ]);

    final failures = [...results.whereType<Left>()];

    if (failures.isNotEmpty) {
      return left(const VouchersFailure.unexpected());
    }

    final userTonightVouchers =
        results[0].getRightOrCrash() as List<UserTonightVoucher>;
    final timeTaskVouchers =
        results[1].getRightOrCrash() as List<TimeTaskVoucher>;

    final vouchers = [
      ...userTonightVouchers.map((v) => Voucher.fromUserTonightVoucher(v)),
      ...timeTaskVouchers.map((v) => Voucher.fromTimeTaskVoucher(v)),
    ];

    return right(vouchers..sortByDateFieldDescending((v) => v.createdAt));
  }
}
