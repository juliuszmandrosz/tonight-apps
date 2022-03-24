import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_reward/add_reward_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/add_reward/widgets/add_reward_button.dart';
import 'package:raver_partners/presentation/add_reward/widgets/add_reward_description_input.dart';
import 'package:raver_partners/presentation/add_reward/widgets/add_reward_required_entries_input.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_translations/raver_translations.dart';

class AddRewardPage extends StatelessWidget {
  const AddRewardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddRewardCubit>(),
      child: BlocListener<AddRewardCubit, AddRewardState>(
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
          appBar: RaverPartnersAppBar(title: S().addReward),
          floatingActionButton: const AddRewardButton(),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: const [
                AddRewardRequiredEntriesInput(),
                SizedBox(height: 20),
                AddRewardDescriptionInput(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
