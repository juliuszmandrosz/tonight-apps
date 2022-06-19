import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_rewards/club_rewards_cubit.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/rewards/reward_list_for_required_entries.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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
            return const Center(
              child: CircularProgressIndicator(),
            );

          case CubitStatus.failure:
            return Container();

          case CubitStatus.success:
            final clubRewardsWithAttendance =
                state.clubRewardsWithAttendance.getOrCrash();

            if (clubRewardsWithAttendance.rewards.isEmpty) {
              return Center(
                child: Text(
                  S().clubDoesNotOfferRewards,
                  style: context.subtitle1,
                ),
              );
            }
            return RefreshIndicator(
              onRefresh: () async =>
                  context.read<ClubRewardsCubit>().getRewards(state.clubId),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Center(
                        child: AutoSizeText(
                          '${S().yourNumberOfEntries}: '
                          '${clubRewardsWithAttendance.userAttendance}',
                          maxLines: 1,
                          style: context.subtitle1,
                        ),
                      ),
                    ),
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
