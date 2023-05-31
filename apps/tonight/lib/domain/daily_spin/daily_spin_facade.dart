import 'package:dartz/dartz.dart';
import 'package:tonight/domain/daily_spin/daily_spin_failure.dart';
import 'package:tonight/domain/daily_spin/daily_spin_rewards_entity.dart';

abstract class DailySpinFacade {
  Future<Either<DailySpinFailure, DailySpinRewards>> fetchDailySpinRewards();

  Future<Either<DailySpinFailure, Unit>> submitDailySpin(int coins);
}