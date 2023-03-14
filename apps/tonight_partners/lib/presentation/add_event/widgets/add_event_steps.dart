import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/add_event_step.dart';
import 'package:tonight_partners/presentation/add_event/widgets/add_event_back_to_submit_button.dart';
import 'package:tonight_partners/presentation/add_event/widgets/add_event_number_stepper.dart';
import 'package:tonight_partners/presentation/add_event/widgets/add_event_steps_buttons.dart';
import 'package:tonight_partners/presentation/add_event/widgets/add_event_steps_header.dart';
import 'package:tonight_partners/presentation/add_event/widgets/event_step_content.dart';

class AddEventSteps extends StatelessWidget {
  const AddEventSteps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
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
          SliverFillRemaining(
            hasScrollBody: false,
            child: BlocBuilder<AddEventCubit, AddEventState>(
              buildWhen: (previous, current) =>
                  previous.currentStep != current.currentStep,
              builder: (context, state) {
                return state.currentStep == AddEventStep.summary
                    ? const SizedBox()
                    : const Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: AddEventStepsButtons(),
                        ),
                      );
              },
            ),
          )
        ],
      ),
    );
  }
}
