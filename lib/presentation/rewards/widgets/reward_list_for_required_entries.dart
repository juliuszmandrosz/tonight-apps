import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/rewards/widgets/reward_list_tile.dart';
import 'package:raver_rewards/raver_rewards.dart';
import 'package:raver_translations/raver_translations.dart';

class RewardListForRequiredEntries extends StatelessWidget {
  final int requiredEntries;
  final List<Reward> rewards;

  const RewardListForRequiredEntries({
    required this.requiredEntries,
    required this.rewards,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '$requiredEntries ${S().entries(requiredEntries)}',
              style: textTheme.subtitle2,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: rewards.length,
          itemBuilder: (ctx, i) => RewardListTile(reward: rewards[i]),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
