import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
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
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '$requiredEntries ${S().entries(requiredEntries)}',
            style: context.headline6.copyWith(color: context.primaryColor),
          ),
        ),
        const SizedBox(height: 10),
        ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: rewards.length,
          itemBuilder: (ctx, i) => RewardListTile(reward: rewards[i]),
        ),
        const Divider(),
        const SizedBox(height: 10),
      ],
    );
  }
}
