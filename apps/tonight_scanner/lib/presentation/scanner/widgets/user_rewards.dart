import 'package:flutter/material.dart';
import 'package:rewards/rewards.dart';
import 'package:tonight_scanner/presentation/core/tonight_scanner_headline.dart';
import 'package:tonight_scanner/presentation/scanner/widgets/reward_list_tile.dart';
import 'package:translations/raver_translations.dart';

class UserRewards extends StatelessWidget {
  final List<Reward> userRewards;

  const UserRewards({
    required this.userRewards,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Align(
          alignment: Alignment.centerLeft,
          child: TonightScannerHeadline(text: S().rewards(2)),
        ),
        const SizedBox(height: 20),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, i) => const Divider(),
          itemCount: userRewards.length + 1,
          itemBuilder: (ctx, i) => i >= userRewards.length
              ? const SizedBox()
              : RewardListTile(reward: userRewards[i]),
        ),
      ],
    );
  }
}
