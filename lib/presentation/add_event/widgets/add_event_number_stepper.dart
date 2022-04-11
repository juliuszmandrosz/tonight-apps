import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_stepper/stepper.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';

class AddEventNumberStepper extends StatelessWidget {
  const AddEventNumberStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final stepsCount = AddEventStep.values.length;

    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.currentStep != current.currentStep,
      builder: (context, state) {
        return NumberStepper(
          enableNextPreviousButtons: false,
          numbers: List.generate(stepsCount, (i) => i + 1),
          activeStep: state.currentStep.index,
          stepColor: theme.colorScheme.outline,
          activeStepColor: theme.primaryColor,
          lineColor: theme.primaryColor,
          numberStyle: theme.textTheme.headline3!,
          enableStepTapping: false,
        );
      },
    );
  }
}
