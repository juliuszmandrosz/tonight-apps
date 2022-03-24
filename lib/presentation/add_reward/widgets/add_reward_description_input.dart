import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_reward/add_reward_cubit.dart';
import 'package:raver_partners/application/add_reward/form_inputs/reward_description.dart';
import 'package:raver_translations/raver_translations.dart';

class AddRewardDescriptionInput extends StatelessWidget {
  const AddRewardDescriptionInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddRewardCubit, AddRewardState>(
      buildWhen: (previous, current) =>
          previous.rewardDescription != current.rewardDescription ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (value) =>
              context.read<AddRewardCubit>().rewardDescriptionChanged(value),
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
