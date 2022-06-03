import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_list_tile.dart';
import 'package:raver_partners/presentation/add_event/widgets/summary/event_summary_ticket_pool_list.dart';
import 'package:raver_translations/raver_translations.dart';

class EventSummaryTicketPools extends StatelessWidget {
  const EventSummaryTicketPools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.ticketPools != current.ticketPools,
      builder: (context, state) {
        return EventSummaryListTile(
          title: S().tickets(2),
          subtitle: const EventSummaryTicketPoolList(),
          step: AddEventStep.tickets,
        );
      },
    );
  }
}
