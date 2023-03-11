import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/add_event/widgets/form_inputs/event_description_input.dart';
import 'package:raver_partners/presentation/add_event/widgets/form_inputs/event_name_input.dart';

class EventDescriptionStep extends StatelessWidget {
  const EventDescriptionStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        EventNameInput(),
        SizedBox(height: 20),
        EventDescriptionInput(),
      ],
    );
  }
}

