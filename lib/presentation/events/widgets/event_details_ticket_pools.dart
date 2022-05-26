import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/events/widgets/ticket_pool_card.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsTicketPools extends StatelessWidget {
  final Event event;

  const EventDetailsTicketPools({Key? key, required this.event})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventTicketsCubit, EventTicketsState>(
      builder: (context, state) {
        return state.status.isLoading()
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      RaverHeadline(text: S().ticketPools),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount:
                        state.eventTickets.getOrCrash().ticketPools.length,
                    itemBuilder: (context, index) => TicketPoolCard(
                        ticketPool:
                            state.eventTickets.getOrCrash().ticketPools[index]),
                  )
                ],
              );
      },
    );
  }
}
