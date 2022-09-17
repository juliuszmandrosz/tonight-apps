import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/presentation/add_event/widgets/ticket_pools/add_ticket_pool_button.dart';
import 'package:raver_partners/presentation/add_event/widgets/ticket_pools/event_ticket_pool_list.dart';
import 'package:raver_partners/presentation/add_event/widgets/ticket_pools/price_at_gate_input.dart';
import 'package:raver_partners/presentation/add_event/widgets/ticket_pools/sales_availability_switch.dart';

class EventTicketsStep extends StatelessWidget {
  const EventTicketsStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SalesAvailabilitySwitch(),
        BlocBuilder<AddEventCubit, AddEventState>(
          buildWhen: (previous, current) =>
              previous.isSaleOnlyAtGate != current.isSaleOnlyAtGate,
          builder: (context, state) {
            return state.isSaleOnlyAtGate
                ? const PriceAtGateInput()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      SizedBox(height: 20),
                      AddTicketPoolButton(),
                      SizedBox(height: 20),
                      EventTicketPoolList(),
                    ],
                  );
          },
        ),
      ],
    );
  }
}
