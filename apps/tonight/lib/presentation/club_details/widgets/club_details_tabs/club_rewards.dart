import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tonight/application/clubs/club_rewards/club_rewards_cubit.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/rewards/reward_list_for_required_entries.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/rewards/user_attendance.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ClubRewards extends StatelessWidget {
  const ClubRewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClubRewardsCubit, ClubRewardsState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure()) {
          context.pushRoute(
            FailureRoute(
              retryCallback: () =>
                  context.read<ClubRewardsCubit>().getRewards(state.clubId),
            ),
          );
        }
      },
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.initial:
            return Container();

          case CubitStatus.loading:
            return Center(
              child: SpinKitThreeBounce(
                size: 24,
                color: context.onSurfaceColor,
              ),
            );

          case CubitStatus.failure:
            return Container();

          case CubitStatus.success:
            final clubRewardsWithAttendance =
                state.clubRewardsWithAttendance.getOrCrash();

            if (clubRewardsWithAttendance.rewards.isEmpty) {
              return Center(
                child: Column(
                  children: [
                    UserAttendance(
                      clubRewardsWithAttendance: clubRewardsWithAttendance,
                    ),
                    const SizedBox(height: 30),
                    // TODO - add translation
                    Text(
                      'Rewards will be available soon!',
                      style: context.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }
            return RefreshIndicator(
              onRefresh: () async =>
                  context.read<ClubRewardsCubit>().getRewards(state.clubId),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  UserAttendance(
                    clubRewardsWithAttendance: clubRewardsWithAttendance,
                  ),
                  const SizedBox(height: 30),
                  for (var entries in clubRewardsWithAttendance.rewards
                      .map((reward) => reward.requiredEntries)
                      .toSet())
                    RewardListForRequiredEntries(
                      isCollected:
                          clubRewardsWithAttendance.userAttendance >= entries,
                      requiredEntries: entries,
                      rewards: clubRewardsWithAttendance.rewards
                          .where((reward) => reward.requiredEntries == entries)
                          .toList(),
                    ),
                ],
              ),
            );
        }
      },
    );
  }
}
