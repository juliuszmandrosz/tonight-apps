import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_edit_reward/add_reward_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/add_reward/widgets/add_reward_button.dart';
import 'package:tonight_partners/presentation/add_reward/widgets/reward_description_input.dart';
import 'package:tonight_partners/presentation/add_reward/widgets/reward_required_entries_input.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_app_bar.dart';
import 'package:translations/translations.dart';

class AddRewardPage extends StatelessWidget {
  const AddRewardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddRewardCubit>(),
      child: BlocListener<AddRewardCubit, AddRewardState>(
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
            context.showSnackbarMessage(S().rewardAddedSuccessfully);
          }
        },
        child: Scaffold(
          appBar: TonightPartnersAppBar(title: S().addReward),
          floatingActionButton: const AddRewardButton(),
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
