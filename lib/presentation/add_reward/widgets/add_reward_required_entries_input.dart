import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_reward/add_reward_cubit.dart';
import 'package:raver_partners/application/add_reward/form_inputs/required_entries.dart';
import 'package:raver_translations/raver_translations.dart';

class AddRewardRequiredEntriesInput extends StatelessWidget {
  const AddRewardRequiredEntriesInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddRewardCubit, AddRewardState>(
      buildWhen: (previous, current) =>
          previous.requiredEntries != current.requiredEntries ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
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
