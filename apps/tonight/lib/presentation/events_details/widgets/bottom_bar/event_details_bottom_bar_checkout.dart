import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:common/extensions/option_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/event_tickets/entities/event_tickets_entity.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tickets/domain/ticket_entity.dart';
import 'package:tonight/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:tonight/application/ticket_list/ticket_list_cubit.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventDetailsBottomBarCheckout extends StatelessWidget {
  final Event event;

  const EventDetailsBottomBarCheckout({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tickets = context.select(
      (TicketListCubit cubit) => cubit.state.upcomingLiveTickets,
    );
    final ticket = tickets.singleWhereOrNull(
      (ticket) => ticket.eventId == event.id && !ticket.isReturned,
    );
    final eventTickets = context.select(
      (EventTicketsCubit cubit) => cubit.state.eventTickets,
    );

    return _checkIfTicketsAreAvailable(
      event: event,
      ticket: ticket,
      eventTickets: eventTickets,
    )
        ? IconButton(
            icon: const FaIcon(FontAwesomeIcons.cartShopping),
            onPressed: () {
              context.pushRoute(
                TicketCheckoutRoute(event: event),
              );
            },
          )
        : const SizedBox.shrink();
  }

  bool _checkIfTicketsAreAvailable({
    required Event event,
    required Ticket? ticket,
    required Option<EventTickets> eventTickets,
  }) {
    if (ticket != null && !ticket.isExpired) {
      return true;
    }

    if (ticket != null && ticket.isExpired) {
      return false;
    }

    if (eventTickets.isNone()) return false;

    if (eventTickets.getOrCrash().isSoldOut) {
      return false;
    }

    if (eventTickets.getOrCrash().isSaleOnlyAtGate) {
      return false;
    }

    return true;
  }
}
