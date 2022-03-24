import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_edit_reward/add_edit_reward_cubit.dart';

class AddEditRewardButton extends StatelessWidget {
  const AddEditRewardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEditRewardCubit, AddEditRewardState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : FloatingActionButton(
                onPressed: () => state.updatingReward.fold(
                  () => context.read<AddEditRewardCubit>().addReward(),
                  (_) => context.read<AddEditRewardCubit>().updateReward(),
                ),
                child: state.updatingReward.fold(
                  () => const FaIcon(FontAwesomeIcons.plus),
                  (_) => const FaIcon(FontAwesomeIcons.solidSave),
                ),
              );
      },
    );
  }
}
