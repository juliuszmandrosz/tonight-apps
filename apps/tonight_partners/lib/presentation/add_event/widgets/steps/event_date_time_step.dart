import 'package:flutter/material.dart';
import 'package:tonight_partners/presentation/add_event/widgets/form_inputs/event_end_date_input.dart';
import 'package:tonight_partners/presentation/add_event/widgets/form_inputs/event_start_date_input.dart';

class EventDateTimeStep extends StatelessWidget {
  const EventDateTimeStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        EventStartDateInput(),
        SizedBox(height: 20),
        EventEndDateInput(),
      ],
    );
  }
}
