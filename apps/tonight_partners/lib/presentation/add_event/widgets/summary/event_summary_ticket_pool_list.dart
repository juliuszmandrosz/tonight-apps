import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_ticket_pool_item.dart';

class EventSummaryTicketPoolList extends StatelessWidget {
  const EventSummaryTicketPoolList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.ticketPools != current.ticketPools,
      builder: (context, state) {
        return Column(
          children: [
            for (var pool in state.ticketPools)
              EventSummaryTicketPoolItem(ticketPool: pool),
          ],
        );
      },
    );
  }
}
