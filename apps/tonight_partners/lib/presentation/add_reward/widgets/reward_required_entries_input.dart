import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight_partners/application/add_edit_reward/add_reward_cubit.dart';
import 'package:tonight_partners/application/add_edit_reward/form_inputs/required_entries.dart';
import 'package:translations/translations.dart';

class RewardRequiredEntriesInput extends HookWidget {
  const RewardRequiredEntriesInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text:
          '${context.read<AddRewardCubit>().state.requiredEntries.value ?? ''}',
    );

    return BlocBuilder<AddRewardCubit, AddRewardState>(
      buildWhen: (previous, current) =>
          previous.requiredEntries != current.requiredEntries ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: _controller,
          onChanged: (value) => context
              .read<AddRewardCubit>()
              .requiredEntriesChanged(int.tryParse(value)),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: S().requiredNumberOfEntries,
            errorText: getRequiredEntriesErrorMessage(state),
          ),
        );
      },
    );
  }
}
