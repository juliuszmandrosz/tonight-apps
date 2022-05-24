import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_edit_reward/add_reward_cubit.dart';

class AddRewardButton extends StatelessWidget {
  const AddRewardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddRewardCubit, AddRewardState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : FloatingActionButton(
                onPressed: () => context.read<AddRewardCubit>().addReward(),
                child: const FaIcon(Icons.add),
              );
      },
    );
  }
}
