import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/raver_translations.dart';

class TicketCheckoutButton extends StatelessWidget {
  final Event event;

  const TicketCheckoutButton({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventTicketsCubit, EventTicketsState>(
      builder: (context, state) {
        if (!state.status.isSuccess() || !_checkIfPayIsAvailable(state)) {
          return const SizedBox();
        }

        return SizedBox(
          width: 300,
          child: FloatingActionButton.extended(
            onPressed: () =>
                AutoRouter.of(context).push(TicketCheckoutRoute(event: event)),
            label: Text(S().proceedToCheckout),
            icon: const FaIcon(FontAwesomeIcons.cartShopping),
          ),
        );
      },
    );
  }

  bool _checkIfPayIsAvailable(EventTicketsState state) {
    final eventTickets = state.eventTickets.getOrCrash();
    return !eventTickets.isSoldOut &&
        !event.isCanceled &&
        !eventTickets.isSaleOnlyAtGate;
  }
}
