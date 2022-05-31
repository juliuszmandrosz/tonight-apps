import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutButton extends StatelessWidget {
  final Event event;

  const TicketCheckoutButton({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventTicketsCubit, EventTicketsState>(
      builder: (context, state) {
        if (state.status == CubitStatus.success) {
          if (_checkIfPayIsAvailable(state)) {
            return SizedBox(
              width: 300,
              child: FloatingActionButton.extended(
                onPressed: () => AutoRouter.of(context)
                    .push(TicketCheckoutRoute(event: event)),
                label: Text(S().proceedToCheckout),
                icon: const FaIcon(FontAwesomeIcons.cartShopping),
              ),
            );
          }
        }
        return const SizedBox.shrink();
      },
    );
  }

  bool _checkIfPayIsAvailable(EventTicketsState state) {
    return !(state.eventTickets.getOrCrash().isSoldOut || event.isCanceled);
  }
}
