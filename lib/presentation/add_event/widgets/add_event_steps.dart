import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/add_event_back_to_submit_button.dart';
import 'package:raver_partners/presentation/add_event/widgets/add_event_number_stepper.dart';
import 'package:raver_partners/presentation/add_event/widgets/add_event_steps_buttons.dart';
import 'package:raver_partners/presentation/add_event/widgets/event_step_content.dart';
import 'package:raver_partners/presentation/add_event/widgets/add_event_steps_header.dart';

class AddEventSteps extends StatelessWidget {
  const AddEventSteps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                AddEventNumberStepper(),
                SizedBox(height: 40),
                AddEventStepsHeader(),
                SizedBox(height: 40),
                AddEventBackToSubmitButton(),
                EventStepContent(),
              ],
            ),
          ),
          BlocBuilder<AddEventCubit, AddEventState>(
            buildWhen: (previous, current) =>
                previous.currentStep != current.currentStep,
            builder: (context, state) {
              return state.currentStep == AddEventStep.summary
                  ? const SizedBox()
                  : const Padding(
                      padding: EdgeInsets.all(10),
                      child: AddEventStepsButtons(),
                    );
            },
          ),
        ],
      ),
    );
  }
}
