import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/tickets/ticket_cubit.dart';
import 'package:raver/domain/events/event_entity.dart';

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
              onPressed: () {
                // TODO - handle this
              },
              child: Text(
                ticket != null ? 'Show ticket' : 'Buy ticket',
                style: textTheme.headline3,
              ),
            ),
          ],
        );
      },
    );
  }
}
