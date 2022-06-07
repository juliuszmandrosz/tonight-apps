import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/core/ticket_logo_animation.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_header.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_invoice_checkbox.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_invoice_data.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_is_vip_switch.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_pay_section.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_promotion_code.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_summary.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_ticket_card.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutPage extends StatelessWidget {
  final Event event;

  const TicketCheckoutPage({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TicketCheckoutCubit>()..initData(event),
      child: BlocConsumer<TicketCheckoutCubit, TicketCheckoutState>(
        buildWhen: (previous, current) =>
            previous.initialStatus != current.initialStatus ||
            previous.eventTickets != current.eventTickets ||
            previous.sendInvoice != current.sendInvoice,
        listenWhen: (previous, current) =>
            previous.proceedingToPaymentStatus !=
                current.proceedingToPaymentStatus ||
            previous.snackbarMessage != current.snackbarMessage,
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

          state.snackbarMessage.fold(
            () {},
            (message) => context.showSnackbarMessage(message),
          );
        },
        builder: (context, state) {
          return state.initialStatus.isLoading()
              ? const Center(child: CircularProgressIndicator())
              : LoaderOverlay(
                  overlayWidget: const TicketLogoAnimation(),
                  overlayColor: context.shadowColor,
                  useDefaultLoading: false,
                  child: Scaffold(
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.centerFloat,
                    floatingActionButton: const TicketCheckoutPaySection(),
                    appBar: RaverAppBar(title: S().checkout),
                    body: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ListView(
                        children: [
                          const TicketCheckoutHeader(),
                          const SizedBox(height: 20),
                          const TicketCheckoutTicketCard(),
                          const SizedBox(height: 30),
                          if (_checkIfVipSwitchVisible(state))
                            const TicketCheckoutIsVipSwitch(),
                          if (!state.eventTickets.getOrCrash().isSoldOut)
                            const TicketCheckoutPromotionCode(),
                          const SizedBox(height: 20),
                          const TicketCheckoutInvoiceCheckbox(),
                          if (state.sendInvoice)
                            const TicketCheckoutInvoiceData(),
                          const SizedBox(height: 20),
                          const TicketCheckoutSummary(),
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }

  bool _checkIfVipSwitchVisible(TicketCheckoutState state) {
    final eventTickets = state.eventTickets.getOrCrash();
    return !eventTickets.isSoldOut &&
        eventTickets.getCurrentPool().isVipEnabled;
  }
}
