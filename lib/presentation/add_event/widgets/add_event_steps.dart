import 'package:flutter/material.dart';
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
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(bottom: 5, top: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AddEventStepsButtons(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
