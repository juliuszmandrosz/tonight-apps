import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_edit_reward/add_edit_reward_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/add_edit_reward/widgets/add_edit_reward_button.dart';
import 'package:raver_partners/presentation/add_edit_reward/widgets/reward_description_input.dart';
import 'package:raver_partners/presentation/add_edit_reward/widgets/reward_required_entries_input.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_rewards/raver_rewards.dart';
import 'package:raver_translations/raver_translations.dart';

class AddEditRewardPage extends StatelessWidget {
  final Reward? reward;

  const AddEditRewardPage({
    this.reward,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = getIt<AddEditRewardCubit>();

        if (reward != null) {
          cubit.addRewardToState(reward!);
        }

        return cubit;
      },
      child: BlocListener<AddEditRewardCubit, AddEditRewardState>(
        listenWhen: (previous, current) =>
            previous.errorMessage != current.errorMessage ||
            previous.status != current.status,
        listener: (context, state) {
          state.errorMessage.fold(
            () {},
            (error) => context.showSnackbarMessage(error),
          );

          if (state.status.isSubmissionSuccess) {
            AutoRouter.of(context).pop();
            state.updatingReward.fold(
              () => context.showSnackbarMessage(S().rewardAddedSuccessfully),
              (_) => context.showSnackbarMessage(S().rewardUpdatedSuccessfully),
            );
          }
        },
        child: Scaffold(
          appBar: RaverPartnersAppBar(
              title: reward != null ? S().editReward : S().addReward),
          floatingActionButton: const AddEditRewardButton(),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: const [
                RewardRequiredEntriesInput(),
                SizedBox(height: 20),
                RewardDescriptionInput(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
