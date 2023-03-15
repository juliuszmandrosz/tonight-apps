import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:rewards/domain/domain.dart';

class RewardListTile extends StatelessWidget {
  final Reward reward;

  const RewardListTile({required this.reward, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: Text(
        reward.description,
        style: context.titleMedium.copyWith(color: context.secondaryColor),
      ),
    );
  }
}
