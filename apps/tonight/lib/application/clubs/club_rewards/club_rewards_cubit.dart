import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/club_rewards/club_rewards_aggregator.dart';
import 'package:tonight/domain/club_rewards/club_rewards_with_attendance_model.dart';

part 'club_rewards_cubit.freezed.dart';
part 'club_rewards_state.dart';

class ClubRewardsCubit extends Cubit<ClubRewardsState> {
  final ClubRewardsAggregator _clubRewardsAggregator;

  ClubRewardsCubit(this._clubRewardsAggregator)
      : super(ClubRewardsState.initial());

  Future<void> getRewards(String clubId) async {
    emit(state.copyWith(clubId: clubId, status: CubitStatus.loading));
    final result = await _clubRewardsAggregator.getClubRewards(clubId);
    result.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (rewards) => emit(
        state.copyWith(
          status: CubitStatus.success,
          clubRewardsWithAttendance: some(rewards),
        ),
      ),
    );
  }
}
