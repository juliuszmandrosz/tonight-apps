import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/add_event/widgets/ticket_pools/add_ticket_pool_button.dart';
import 'package:raver_partners/presentation/add_event/widgets/ticket_pools/event_ticket_pool_list.dart';

class EventTicketsStep extends StatelessWidget {
  const EventTicketsStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AddTicketPoolButton(),
        SizedBox(height: 20),
        EventTicketPoolList(),
      ],
    );
  }
}
