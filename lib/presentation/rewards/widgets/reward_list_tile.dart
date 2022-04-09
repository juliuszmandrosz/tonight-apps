import 'package:flutter/material.dart';
import 'package:raver_rewards/domain/domain.dart';

class RewardListTile extends StatelessWidget {
  final Reward reward;

  const RewardListTile({required this.reward, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: ListTile(
          title: Text(reward.description, style: theme.textTheme.subtitle1),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mode_edit,
                color: theme.iconTheme.color,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
