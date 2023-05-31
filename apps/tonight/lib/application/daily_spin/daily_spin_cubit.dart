import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/daily_spin/daily_spin_facade.dart';
import 'package:tonight/domain/daily_spin/daily_spin_rewards_entity.dart';
import 'package:translations/translations.dart';

part 'daily_spin_cubit.freezed.dart';
part 'daily_spin_state.dart';

class DailySpinCubit extends Cubit<DailySpinState> {
  final DailySpinFacade _dailySpinFacade;

  DailySpinCubit(this._dailySpinFacade) : super(DailySpinState.initial());

  Future<void> getAvailableRewards() async {
    emit(state.copyWith(getRewardsStatus: CubitStatus.loading));
    final result = await _dailySpinFacade.fetchDailySpinRewards();
    result.fold(
      (_) => emit(state.copyWith(getRewardsStatus: CubitStatus.failure)),
      (rewards) => emit(
        state.copyWith(
          getRewardsStatus: CubitStatus.success,
          availableRewards: rewards,
        ),
      ),
    );
  }

  submitDailySpin(int coins) async {
    emit(
      state.copyWith(
        spinStatus: CubitStatus.loading,
        reward: some(coins),
      ),
    );
    final result = await _dailySpinFacade.submitDailySpin(coins);
    result.fold(
      (_) {
        _showSnackbar(S().serverError);
        emit(state.copyWith(spinStatus: CubitStatus.failure));
      },
      (_) => emit(state.copyWith(spinStatus: CubitStatus.success)),
    );
  }

  _showSnackbar(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}
