import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:raver_partners/application/add_edit_reward/add_reward_cubit.dart';
import 'package:raver_partners/application/add_edit_reward/form_inputs/reward_description.dart';
import 'package:raver_translations/raver_translations.dart';

class RewardDescriptionInput extends HookWidget {
  const RewardDescriptionInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text: context.read<AddRewardCubit>().state.rewardDescription.value,
    );

    return BlocBuilder<AddRewardCubit, AddRewardState>(
      buildWhen: (previous, current) =>
          previous.rewardDescription != current.rewardDescription ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: _controller,
          onChanged: (value) => context
              .read<AddRewardCubit>()
              .rewardDescriptionChanged(value),
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            labelText: S().description,
            errorText: getRewardDescriptionErrorMessage(state),
          ),
        );
      },
    );
  }
}
