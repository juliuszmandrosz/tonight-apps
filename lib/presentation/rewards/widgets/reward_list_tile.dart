import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/reward_list/reward_list_cubit.dart';
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
      child: ListTile(
        title: Text(reward.description, style: theme.textTheme.subtitle1),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mode_edit,
                color: theme.iconTheme.color,
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () async {
                final result = await context.showDeleteConfirmationDialog();

                if (result ?? false) {
                  context.read<RewardListCubit>().deleteReward(reward);
                }
              },
              icon: Icon(
                Icons.delete_rounded,
                color: theme.iconTheme.color,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
