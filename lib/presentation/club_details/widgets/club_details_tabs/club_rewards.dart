import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_rewards/club_rewards_cubit.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/rewards/reward_list_for_required_entries.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubRewards extends StatelessWidget {
  const ClubRewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubRewardsCubit, ClubRewardsState>(
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.initial:
            return Container();
          case CubitStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case CubitStatus.failure:
            return Center(
              child: Text(S().errorLoadingRewards),
            );

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
            return ListView(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: AutoSizeText(
                        // TODO - add translation
                        'Twoja liczba wejść: '
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
            );
        }
      },
    );
  }
}
