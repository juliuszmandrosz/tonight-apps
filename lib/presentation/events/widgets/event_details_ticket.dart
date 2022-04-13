import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsTicket extends StatelessWidget {
  final Event event;

  const EventDetailsTicket({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<TicketListCubit, TicketListState>(
      builder: (context, state) {
        final ticket = state.tickets
            .singleWhereOrNull((ticket) => ticket.eventId == event.id);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => ticket != null
                  ? AutoRouter.of(context).push(TicketQrRoute(ticket: ticket))
                  : AutoRouter.of(context)
                      .push(TicketCheckoutRoute(event: event)),
              child: Text(
                ticket != null ? S().showTicket : S().buyTicket,
                style: textTheme.headline3,
              ),
            ),
          ],
        );
      },
    );
  }
}
