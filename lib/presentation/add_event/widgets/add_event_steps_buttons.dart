import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:formz/formz.dart';
import 'package:raver_translations/generated/l10n.dart';

class AddEventStepsButtons extends StatelessWidget {
  const AddEventStepsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.currentStep != current.currentStep ||
          previous.status != current.status,
      builder: (context, state) {
        final stepsCount = AddEventStep.values.length;
        final isLastStep = state.currentStep.index == stepsCount - 1;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: state.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: state.currentStep.index > 0
                          ? () => context.read<AddEventCubit>().decrementStep()
                          : null,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(S().back),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          context.read<AddEventCubit>().incrementStep(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(isLastStep ? S().submit : S().next),
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
