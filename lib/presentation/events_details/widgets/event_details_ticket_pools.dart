import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/events_details/widgets/ticket_pool_list_tile.dart';
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
        return ListTile(
          dense: true,
          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
          title: Align(
            alignment: Alignment.centerLeft,
            child: RaverHeadline(
              text: S().ticketPools,
              isSmallerVersion: true,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: state.status.isLoading()
                ? SpinKitThreeBounce(
                    color: context.onSurfaceColor,
                    size: 24,
                  )
                : ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                        state.eventTickets.getOrCrash().ticketPools.length + 1,
                    itemBuilder: (context, i) =>
                        i >= state.eventTickets.getOrCrash().ticketPools.length
                            ? const SizedBox()
                            : TicketPoolListTile(
                                ticketPool: state.eventTickets
                                    .getOrCrash()
                                    .ticketPools[i],
                              ),
                    separatorBuilder: (context, i) => const Divider(),
                  ),
          ),
        );
      },
    );
  }
}
