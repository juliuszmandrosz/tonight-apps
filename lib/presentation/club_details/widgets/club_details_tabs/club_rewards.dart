import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_rewards/club_rewards_cubit.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/rewards/reward_card.dart';
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
            return ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              shrinkWrap: true,
              itemCount: clubRewardsWithAttendance.rewards.length,
              itemBuilder: (BuildContext context, int index) {
                final clubReward = clubRewardsWithAttendance.rewards[index];
                return RewardCard(
                  rewardContent: clubReward.description,
                  currentEntries: clubRewardsWithAttendance.userAttendance,
                  requiredEntries: clubReward.requiredEntries,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10);
              },
            );
        }
      },
    );
  }
}
