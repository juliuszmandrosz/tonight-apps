import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/reward_list/reward_list_cubit.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/typography_extensions.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_rewards/domain/domain.dart';

class RewardListTile extends StatelessWidget {
  final Reward reward;

  const RewardListTile({required this.reward, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(5),
      child: ListTile(
        title: Text(
          reward.description,
          style: context.subtitle1,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => AutoRouter.of(context).push(
                AddEditRewardRoute(reward: reward),
              ),
              icon: const Icon(
                Icons.mode_edit,
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
              icon: const Icon(
                Icons.delete_rounded,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
