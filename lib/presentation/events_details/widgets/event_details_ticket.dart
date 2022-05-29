import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/presentation/events_details/widgets/ticket_checkout_button.dart';
import 'package:raver/presentation/events_details/widgets/ticket_show_qr_button.dart';
import 'package:raver_events/raver_events.dart';

class EventDetailsTicket extends StatelessWidget {
  final Event event;

  const EventDetailsTicket({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketListCubit, TicketListState>(
      builder: (context, state) {
        final ticket = state.upcomingLiveTickets.singleWhereOrNull(
            (ticket) => ticket.eventId == event.id && !ticket.isReturned);
        return ticket != null
            ? TicketShowQrButton(ticket: ticket)
            : TicketCheckoutButton(event: event);
      },
    );
  }
}
