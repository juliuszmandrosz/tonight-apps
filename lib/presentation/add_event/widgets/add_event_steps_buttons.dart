import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

class AddEventStepsButtons extends StatelessWidget {
  const AddEventStepsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.currentStep != current.currentStep,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
              onPressed: state.currentStep.index > 0
                  ? () => context.read<AddEventCubit>().decrementStep()
                  : null,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(S().back),
              ),
            ),
            OutlinedButton(
              onPressed: () => context.read<AddEventCubit>().incrementStep(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(S().next),
              ),
            ),
          ],
        );
      },
    );
  }
}
