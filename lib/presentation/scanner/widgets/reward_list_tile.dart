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
    return Card(
      child: ListTile(
        title: AutoSizeText(
          reward.description,
          maxLines: 2,
          style: context.subtitle1,
        ),
      ),
    );
  }
}
