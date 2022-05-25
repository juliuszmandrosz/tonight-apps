import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_rewards/raver_rewards.dart';

class RewardListTile extends StatelessWidget {
  final Reward reward;

  const RewardListTile({
    required this.reward,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: AutoSizeText(
        reward.description,
        maxLines: 4,
        style: context.subtitle1,
      ),
    );
  }
}
