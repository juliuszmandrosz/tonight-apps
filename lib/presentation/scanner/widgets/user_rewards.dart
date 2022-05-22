import 'package:flutter/material.dart';
import 'package:raver_rewards/raver_rewards.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_headline.dart';
import 'package:raver_scanner/presentation/scanner/widgets/reward_list_tile.dart';
import 'package:raver_translations/raver_translations.dart';

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
          child: RaverScannerHeadline(text: S().rewards(2)),
        ),
        const SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: userRewards.length,
          itemBuilder: (ctx, i) => RewardListTile(reward: userRewards[i]),
        ),
      ],
    );
  }
}
