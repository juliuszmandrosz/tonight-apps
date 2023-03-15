import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rewards/domain/domain.dart';
import 'package:tonight_partners/application/reward_list/reward_list_cubit.dart';

class RewardListTile extends StatelessWidget {
  final Reward reward;

  const RewardListTile({required this.reward, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: AutoSizeText(
        reward.description,
        style: context.titleMedium,
        maxLines: 3,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () async {
              final result = await context.showDeleteConfirmationDialog();

              if (result ?? false) {
                context.read<RewardListCubit>().deleteReward(reward);
              }
            },
            icon: const Icon(Icons.delete_rounded),
          ),
        ],
      ),
    );
  }
}
