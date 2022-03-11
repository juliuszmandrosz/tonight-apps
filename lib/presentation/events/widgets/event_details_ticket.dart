import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/tickets/ticket_cubit.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/routes/app_router.dart';

class EventDetailsTicket extends StatelessWidget {
  final Event event;

  const EventDetailsTicket({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<TicketCubit, TicketState>(
      builder: (context, state) {
        final ticket = state.tickets
            .singleWhereOrNull((ticket) => ticket.eventId == event.id);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => ticket != null
                  ? AutoRouter.of(context)
                      .push(TicketQrRoute(ticketId: ticket.id))
                  : ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(S().unexpectedError),
                      ),
                    ),
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
