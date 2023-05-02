import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rewards/rewards.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/rewards/reward_list_tile.dart';
import 'package:translations/raver_translations.dart';

class RewardListForRequiredEntries extends StatelessWidget {
  final int requiredEntries;
  final List<Reward> rewards;
  final bool isCollected;

  const RewardListForRequiredEntries({
    required this.requiredEntries,
    required this.rewards,
    this.isCollected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$requiredEntries ${S().entries(requiredEntries)}',
                style: context.titleLarge.copyWith(color: context.primaryColor),
              ),
            ),
            if (isCollected)
              FaIcon(
                FontAwesomeIcons.circleCheck,
                color: context.primaryColor,
              ),
          ],
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
