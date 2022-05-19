import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_stepper/stepper.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/color_extensions.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/typography_extensions.dart';

class AddEventNumberStepper extends StatelessWidget {
  const AddEventNumberStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stepsCount = AddEventStep.values.length;

    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.currentStep != current.currentStep,
      builder: (context, state) {
        return NumberStepper(
          enableNextPreviousButtons: false,
          numbers: List.generate(stepsCount, (i) => i + 1),
          activeStep: state.currentStep.index,
          stepColor: context.outlineColor,
          activeStepColor: context.primaryColor,
          lineColor: context.primaryColor,
          numberStyle: context.headline3,
          activeStepBorderColor: context.primaryColor,
          enableStepTapping: false,
        );
      },
    );
  }
}
