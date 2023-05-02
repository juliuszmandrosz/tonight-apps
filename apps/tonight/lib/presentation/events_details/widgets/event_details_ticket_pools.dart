import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tonight/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/events_details/widgets/ticket_pool_list_tile.dart';
import 'package:translations/raver_translations.dart';

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
            child: TonightHeadline(
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
                : state.eventTickets.getOrCrash().isSaleOnlyAtGate
                    ? Text(
                        S().ticketsAvailableOnlyAtGate,
                        style: context.titleMedium.copyWith(
                          color: context.secondaryColor,
                        ),
                      )
                    : ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:
                            state.eventTickets.getOrCrash().ticketPools.length +
                                1,
                        itemBuilder: (context, i) => i >=
                                state.eventTickets
                                    .getOrCrash()
                                    .ticketPools
                                    .length
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
