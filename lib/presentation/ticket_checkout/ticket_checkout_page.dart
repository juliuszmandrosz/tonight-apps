import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_header.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_is_vip_switch.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_pay_section.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_promotion_code.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_ticket_card.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutPage extends StatelessWidget {
  final Event? event;
  final Ticket? ticket;

  const TicketCheckoutPage({
    this.event,
    this.ticket,
    Key? key,
  })  : assert((event != null || ticket != null),
            'Event and ticket cannot be null at the same time'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayColor: context.shadowColor,
      child: Scaffold(
        appBar: RaverAppBar(title: S().checkout),
        body: BlocProvider(
          create: (context) {
            final cubit = getIt<TicketCheckoutCubit>(
              param1: context.read<TicketListCubit>(),
            );

            event != null
                ? cubit.initEventData(event!)
                : cubit.initTicketData(ticket!);

            return cubit;
          },
          child: BlocConsumer<TicketCheckoutCubit, TicketCheckoutState>(
            buildWhen: (previous, current) =>
                previous.initialStatus != current.initialStatus ||
                previous.eventTickets != current.eventTickets,
            listenWhen: (previous, current) =>
                previous.paymentFailureMessage !=
                    current.paymentFailureMessage ||
                previous.proceedingToPaymentStatus !=
                    current.proceedingToPaymentStatus ||
                previous.hasTicketPoolRestored !=
                    current.hasTicketPoolRestored ||
                previous.hasTicketPoolSoldOut != current.hasTicketPoolSoldOut,
            listener: (context, state) {
              if (state.proceedingToPaymentStatus.isSuccess() &&
                  state.purchasedTicket.isSome()) {
                AutoRouter.of(context).replace(
                  TicketPaymentConfirmRoute(
                    ticket: state.purchasedTicket.getOrCrash(),
                  ),
                );
              }

              state.proceedingToPaymentStatus.isLoading()
                  ? context.loaderOverlay.show()
                  : context.loaderOverlay.hide();

              if (state.initialStatus.isFailure()) {
                AutoRouter.of(context).pop();
              }

              state.paymentFailureMessage.fold(
                () {},
                (error) => context.showSnackbarMessage(error),
              );

              if (state.hasTicketPoolSoldOut) {
                context.showSnackbarMessage(S().ticketPoolHasSoldOut);
              }

              if (state.hasTicketPoolRestored) {
                context.showSnackbarMessage(
                    // TODO - add translation
                    'Poprzednia pula biletów znowu jest dostępna!');
              }
            },
            builder: (context, state) {
              return state.initialStatus.isLoading()
                  ? const Center(child: CircularProgressIndicator())
                  : Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView(
                              children: [
                                const TicketCheckoutHeader(),
                                const SizedBox(height: 20),
                                const TicketCheckoutTicketCard(),
                                const SizedBox(height: 30),
                                if (event != null &&
                                    !state.eventTickets.getOrCrash().isSoldOut)
                                  const TicketCheckoutIsVipSwitch(),
                                if (!state.eventTickets.getOrCrash().isSoldOut)
                                  const TicketCheckoutPromotionCode(),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          const TicketCheckoutPaySection(),
                        ],
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
