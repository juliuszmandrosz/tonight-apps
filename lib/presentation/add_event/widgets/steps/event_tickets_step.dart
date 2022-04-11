import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/add_event/widgets/form_inputs/event_price_input.dart';

class EventTicketsStep extends StatelessWidget {
  const EventTicketsStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        EventPriceInput(),
      ],
    );
  }
}
